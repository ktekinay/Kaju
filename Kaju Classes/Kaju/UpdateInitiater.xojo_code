#tag Class
Protected Class UpdateInitiater
	#tag Method, Flags = &h21
		Private Function ArrayToShellScript(arr() As String, variableName As String) As String
		  // Converts the given array to shell script code to form an array
		  
		  dim r as string
		  
		  #if TargetMacOS or TargetLinux then
		    
		    dim builder() as string
		    for i as integer = 0 to arr.Ubound
		      builder.Append variableName
		      builder.Append "["
		      builder.Append str( i )
		      builder.Append "]="
		      builder.Append ShellQuote( arr( i ) )
		      builder.Append EndOfLine.UNIX
		    next i
		    
		    r = join( builder, "" )
		    
		  #else // Windows
		    
		  #endif
		  
		  return r
		  
		  
		  #pragma warning "Finish Windows code"
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Cancel()
		  ReplacementAppFolder = nil
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub Destructor()
		  RunScript
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function GetManifest(sourceFolder As FolderItem, excludeName As String) As String()
		  // Retrieves the names of the files and folders contained in the sourceFolder
		  
		  dim r() as string
		  
		  dim cnt as integer = sourceFolder.Count
		  for i as integer = 1 to cnt
		    dim f as FolderItem = sourceFolder.Item( i )
		    dim name as string = f.Name
		    if name <> excludeName then
		      r.Append name
		    end if
		  next
		  
		  return r
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub RunScript()
		  if ReplacementAppFolder is nil or not ReplacementAppFolder.Exists then
		    ReplacementAppFolder = nil
		    return
		  end if
		  
		  //
		  // Set up a temporary folder
		  //
		  dim tempFolder as FolderItem
		  #if DebugBuild then
		    tempFolder = SpecialFolder.Desktop.Child( "KajuTempFolder" + str( Ticks ) )
		    if tempFolder.Exists then
		      tempFolder.Delete
		    end if
		    tempFolder.CreateAsFolder
		  #else
		    tempFolder = Kaju.GetTemporaryFolder
		  #endif
		  
		  //
		  // Set up the PID file
		  //
		  dim pid as FolderItem = GetTemporaryFolderItem()
		  
		  #if TargetMacOS then
		    RunScriptMac( tempFolder, pid )
		  #elseif TargetLinux then
		    RunScriptLinux( tempFolder, pid )
		  #else // Windows
		    RunScriptWindows( tempFolder, pid )
		  #endif
		  
		  Exception err As RuntimeException
		    MsgBox "Could not complete update - " + err.Message
		    
		  Finally
		    
		    if pid <> nil then
		      pid.Delete
		    end if
		    
		    
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub RunScriptLinux(tempFolder As FolderItem, pid As FolderItem)
		  dim script as string = kUpdaterScript
		  
		  //
		  // Get a FolderItem for the current executable
		  //
		  dim executable as FolderItem = App.ExecutableFile
		  
		  script = script.ReplaceAll( kMarkerAppName, ShellQuote( executable.Name ) )
		  script = script.ReplaceAll( kMarkerAppParent, ShellQuote( executable.Parent.NativePath ) )
		  script = script.ReplaceAll( kMarkerNewAppName, ShellQuote( ReplacementExecutableName ) )
		  script = script.ReplaceAll( kMarkerNewAppParent, ShellQuote( ReplacementAppFolder.NativePath ) )
		  script = script.ReplaceAll( kMarkerTempFolder, ShellQuote( TempFolder.NativePath ) )
		  
		  script = script.ReplaceAll( kMarkerPIDFilePath, ShellQuote( pid.NativePath ) )
		  
		  //
		  // Get the names of the other files/folders in the replacement folder
		  //
		  dim otherFiles() as string
		  dim otherFolders() as string
		  GetManifest( ReplacementAppFolder, ReplacementExecutableName, otherFiles, otherFolders )
		  
		  //
		  // Fill in the other folders array
		  //
		  if true then // Scope
		    script = script.Replace( kMarkerOtherFoldersUbound, str( otherFolders.Ubound ) )
		    
		    dim segment as string = ArrayToShellScript( otherFolders, kOtherFolderArrayVariableName )
		    script = script.Replace( kMarkerOtherFoldersArray, segment )
		  end if
		  
		  //
		  // Fill in the other files array
		  //
		  if true then // Scope
		    script = script.Replace( kMarkerOtherFilesUbound, str( otherFiles.Ubound ) )
		    
		    dim segment as string = ArrayToShellScript( otherFiles, kOtherFileArrayVariableName )
		    script = script.Replace( kMarkerOtherFilesArray, segment )
		  end if
		  
		  //
		  // Prepare for saving
		  //
		  script = ReplaceLineEndings( script, EndOfLine.UNIX )
		  
		  //
		  // Save it
		  //
		  dim scriptName as string = kScriptName
		  dim scriptFile as FolderItem = tempFolder.Child( scriptName )
		  dim bs as BinaryStream = BinaryStream.Create( scriptFile, true )
		  bs.Write( script )
		  if bs.LastErrorCode <> 0 then
		    MsgBox "Error writing scrip file: " + str( bs.LastErrorCode )
		  end if
		  bs.Close
		  bs = nil
		  
		  //
		  // Adjust the permissions
		  //
		  dim p as new Permissions( scriptFile.Permissions )
		  p.OwnerExecute = true
		  p.GroupExecute = true
		  p.OthersExecute = true
		  scriptFile.Permissions = p
		  
		  //
		  // Run the script
		  //
		  dim sh as new Shell
		  sh.Mode = 1 // Asynchronous
		  
		  dim cmd as string
		  cmd = "/usr/bin/nohup " + ShellQuote( scriptFile.NativePath ) + " &"
		  
		  sh.Execute( cmd )
		  for i as integer = 1 to 10000
		    sh.Poll
		    App.YieldToNextThread
		  next i
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub RunScriptMac(tempFolder As FolderItem, pid As FolderItem)
		  dim script as string = kUpdaterScript
		  
		  //
		  // Get a FolderItem for the current app
		  //
		  dim appFolderItem as FolderItem
		  
		  appFolderItem = App.ExecutableFile.Parent
		  while appFolderItem.Name <> "Contents"
		    appFolderItem = appFolderItem.Parent
		  wend
		  appFolderItem = appFolderItem.Parent
		  
		  script = script.ReplaceAll( kMarkerAppName, ShellQuote( appFolderItem.Name ) )
		  script = script.ReplaceAll( kMarkerAppParent, ShellQuote( appFolderItem.Parent.NativePath ) )
		  script = script.ReplaceAll( kMarkerNewAppName, ShellQuote( ReplacementAppFolder.Name ) )
		  script = script.ReplaceAll( kMarkerNewAppParent, ShellQuote( ReplacementAppFolder.Parent.NativePath ) )
		  script = script.ReplaceAll( kMarkerTempFolder, ShellQuote( TempFolder.NativePath ) )
		  
		  script = script.ReplaceAll( kMarkerPIDFilePath, ShellQuote( pid.NativePath ) )
		  
		  //
		  // Prepare for saving
		  //
		  script = ReplaceLineEndings( script, EndOfLine.UNIX )
		  
		  //
		  // Save it
		  //
		  dim scriptName as string = kScriptName
		  dim scriptFile as FolderItem = tempFolder.Child( scriptName )
		  dim bs as BinaryStream = BinaryStream.Create( scriptFile, true )
		  bs.Write( script )
		  if bs.LastErrorCode <> 0 then
		    MsgBox "Error writing scrip file: " + str( bs.LastErrorCode )
		  end if
		  bs.Close
		  bs = nil
		  
		  //
		  // Adjust the permissions
		  //
		  dim p as new Permissions( scriptFile.Permissions )
		  p.OwnerExecute = true
		  p.GroupExecute = true
		  p.OthersExecute = true
		  scriptFile.Permissions = p
		  
		  //
		  // Run the script
		  //
		  dim sh as new Shell
		  sh.Mode = 1 // Asynchronous
		  
		  dim cmd as string
		  cmd = "nohup " + ShellQuote( scriptFile.NativePath ) + " &"
		  
		  sh.Execute( cmd )
		  dim targetTicks as integer = Ticks + 60
		  while Ticks < targetTicks
		    sh.Poll
		    App.YieldToNextThread
		  wend
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub RunScriptWindows(tempFolder As FolderItem, pid As FolderItem)
		  dim script as string = kUpdaterScript
		  
		  #pragma warning "Finish Windows code"
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function ShellPathQuote(f As FolderItem) As String
		  dim s as string = f.NativePath
		  
		  while s.Right( 1 ) = "/"
		    s = s.Left( s.Len - 1 )
		  wend
		  
		  s = ShellQuote( s )
		  
		  return s
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function ShellQuote(s As String) As String
		  s = s.ReplaceAll( "'", "'\''" )
		  s = "'" + s + "'"
		  
		  return s
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		ReplacementAppFolder As FolderItem
	#tag EndProperty

	#tag Property, Flags = &h0
		ReplacementExecutableName As String
	#tag EndProperty


	#tag Constant, Name = kMarkerAppName, Type = String, Dynamic = False, Default = \"@@APP_NAME@@", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kMarkerAppParent, Type = String, Dynamic = False, Default = \"@@APP_PARENT@@", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kMarkerNewAppName, Type = String, Dynamic = False, Default = \"@@NEW_APP_NAME@@", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kMarkerNewAppParent, Type = String, Dynamic = False, Default = \"@@NEW_APP_PARENT@@", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kMarkerOtherArray, Type = String, Dynamic = False, Default = \"@@NEW_APP_OTHER_ARRAY@@", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kMarkerOtherUbound, Type = String, Dynamic = False, Default = \"@@NEW_APP_OTHER_UB@@", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kMarkerPIDFilePath, Type = String, Dynamic = False, Default = \"@@PID_FILE_PATH@@", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kMarkerTempFolder, Type = String, Dynamic = False, Default = \"@@TEMP_FOLDER@@", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kOtherArrayVariableName, Type = String, Dynamic = False, Default = \"NEW_APP_OTHER_NAME", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kScriptName, Type = String, Dynamic = False, Default = \"updater.sh", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kUpdaterScript, Type = String, Dynamic = False, Default = \"", Scope = Private
		#Tag Instance, Platform = Mac OS, Language = Default, Definition  = \"#!/bin/bash\n\n#\n# FUNCTIONS\n#\n\nfunction log_cmd {\n  /usr/bin/logger -t \"Kaju Update Script\" $@\n}\n\n# END FUNCTIONS\n\n#\n# These will be filled in by the calling app\n#\n\nAPP_NAME\x3D@@APP_NAME@@\nAPP_PARENT\x3D@@APP_PARENT@@\nNEW_APP_NAME\x3D@@NEW_APP_NAME@@\nNEW_APP_PARENT\x3D@@NEW_APP_PARENT@@\nTEMP_FOLDER_PATH\x3D@@TEMP_FOLDER@@\nPID_FILE\x3D@@PID_FILE_PATH@@\n\n#\n# -----------------\n#\n\nreadonly true\x3D1\nreadonly false\x3D0\n\nAPP_PATH\x3D$APP_PARENT/$APP_NAME\nNEW_APP_PATH\x3D$NEW_APP_PARENT/$NEW_APP_NAME\n\nRENAMED_APP_NAME\x3D`echo \"$APP_NAME\" | /usr/bin/sed -E s/\\.[aA][pP]{2}//`-`date +%Y%m%d%H%M%S`.app\nRENAMED_APP_PATH\x3D$APP_PARENT/$RENAMED_APP_NAME\n\ncounter\x3D10\nwhile [ -f \"$PID_FILE\" ]\ndo\n  log_cmd \"Checking to see if $PIDFILE exists\x2C $counter\"\n  sleep 1\n  \n  let counter\x3Dcounter-1\n  \n  if [ $counter \x3D\x3D 0 ]\n  then\n  \tlog_cmd \'ERROR: Could not update app\x2C it never quit\'\n  \texit 1\n  fi\ndone\n\nPROCEED\x3D$true\n\n#\n# Rename the old application\n#\nlog_cmd \"Renaming old application $APP_NAME to $RENAMED_APP_NAME\"\nmv \"$APP_PATH\" \"$RENAMED_APP_PATH\"\n\n#\n# Make sure that succeeded\n#\nif [ $\? \x3D\x3D 0 ]\nthen\n  log_cmd \'...confirmed\'\nelse\n  log_cmd \"Could not rename old application to $RENAMED_APP_PATH\"\n  PROCEED\x3D0\nfi\n\n#\n# Move in the replacement app\n#\nif [ $PROCEED \x3D\x3D $true ]\nthen\n  log_cmd \"Moving new application $NEW_APP_NAME to folder $APP_PARENT\"\n  mv \"$NEW_APP_PATH\" \"$APP_PARENT\"\n\n  #\n  # Make sure that worked\n  #\n  if [ $\? \x3D\x3D 0 ]\n  then\n    log_cmd \'...confirmed\'\n  else\n    log_cmd \"Could not move in new application\"\n    log_cmd \"Attempting to restore old application and launch it\"\n    mv \"$RENAMED_APP_PATH\" \"$APP_PATH\"\n    open \"$APP_PATH\"\n    PROCEED\x3D$false\n  fi\nfi\n\nif [ $PROCEED \x3D\x3D $true ]\nthen\n  log_cmd \"Removing old application $RENAMED_APP_NAME\"\n  rm -fr \"$RENAMED_APP_PATH\"\n  \n  APP_PATH\x3D$APP_PARENT/$NEW_APP_NAME\n  log_cmd \"Starting new application at $APP_PATH\"\n  \n  open \"$APP_PATH\"\nfi\n\nlog_cmd \'Removing temp folder\'\nrm -fr \"$TEMP_FOLDER_PATH\"\n"
		#Tag Instance, Platform = Linux, Language = Default, Definition  = \"#!/bin/bash\n\n#\n# FUNCTIONS\n#\n\nfunction log_cmd {\n  /usr/bin/logger -t \"Kaju Update Script\" $@\n}\n\n# END FUNCTIONS\n\n#\n# These will be filled in by the calling app\n#\n\nAPP_NAME\x3D@@APP_NAME@@\nAPP_PARENT\x3D@@APP_PARENT@@\nNEW_APP_NAME\x3D@@NEW_APP_NAME@@\nNEW_APP_PARENT\x3D@@NEW_APP_PARENT@@\nTEMP_FOLDER_PATH\x3D@@TEMP_FOLDER@@\nPID_FILE\x3D@@PID_FILE_PATH@@\n\n#\n# This array will store the names of the items next to the executable\n# under the variable NEW_APP_OTHER_NAME\n#\nNEW_APP_OTHER_UB\x3D@@NEW_APP_OTHER_UB@@\n\n@@NEW_APP_OTHER_ARRAY@@\n\n#\n# -----------------\n#\n\nreadonly true\x3D1\nreadonly false\x3D0\n\nAPP_PATH\x3D$APP_PARENT/$APP_NAME\n\nBACKUP_PARENT\x3D$APP_PARENT/${APP_NAME}-`date +%Y%m%d%H%M%S`\nmkdir \"$BACKUP_PARENT\"\n\ncounter\x3D10\nwhile [ -f \"$PID_FILE\" ]\ndo\n  log_cmd  \"Checking to see if $PIDFILE exists\x2C $counter\"\n  sleep 1\n  \n  let counter\x3Dcounter-1\n  \n  if [ $counter \x3D\x3D 0 ]\n  then\n  \tlog_cmd  \'ERROR: Could not update app\x2C it never quit\'\n  \texit 1\n  fi\ndone\n\nPROCEED\x3D$true\n\n#\n# Move the other items\n#\nlog_cmd \"Moving other items to backup $BACKUP_PARENT\"\n\nMOVED_ITEM[0]\x3D\'\'\nMOVED_ITEM_UB\x3D-1\n\ncounter\x3D0\nwhile [ $counter -le $NEW_APP_OTHER_UB ]\ndo\n  this_item\x3D${NEW_APP_OTHER_NAME}[$counter]\n  log_cmd \"Looking for item $this_item in $APP_PARENT\"\n  \n  this_path\x3D$APP_PARENT/$this_item\n  if [ -d \"$this_path\" ] || [ -f \"$this_path\" ]\n  then\n    log_cmd \"...found\x2C moving\"\n    mv \"$this_folder_path\" \"$BACKUP_PARENT\"\n    if [ $\? \x3D\x3D 0 ]\n    then\n      log_cmd \"...confirmed\"\n      (( MOVED_ITEM_UB++ ))\n      MOVED_ITEM[$MOVED_ITEM_UB]\x3D$BACKUP_PARENT/$this_item\n    else\n       log_cmd \"...FAILED!\"\n       PROCEED\x3D$false\n       break\n    fi\n  fi\n  (( counter++ ))\ndone\n\n#\n# Move the executable\n#\nif [ $PROCEED \x3D\x3D $true ]\nthen\n  log_cmd \"Moving the executable $APP_NAME to backup\"\n  mv \"$APP_PARENT/$APP_NAME\" \"$BACKUP_PARENT\"\n  if [ $\? \x3D\x3D 0 ]\n  then\n    log_cmd \"...confirmed\"\n  else\n    log_cmd \"...FAILED!\"\n    PROCEED\x3D$false\n  fi\nfi\n\n#\n# Make sure there wasn\'t an error during the move\n#\nif [ $PROCEED \x3D\x3D $true ]\nthen\n  log_cmd \'All items moved to backup\'\nelse\n  log_cmd \'Attempting to move items back to parent\'\n  mv -f \"${BACKUP_PARENT}\"/* \"$APP_PARENT\"\nfi\n\n#\n# Move in the replacement files\n#\nif [ $PROCEED \x3D\x3D $true ]\nthen\n  log_cmd  \"Moving files from $NEW_APP_PARENT to folder $APP_PARENT\"\n  mv \"${NEW_APP_PARENT}\"/* \"$APP_PARENT\"\n\n  #\n  # Make sure it moved\n  #\n  if [ $\? \x3D\x3D 0 ]\n  then\n    log_cmd  \'...confirmed\'\n  else\n    log_cmd  \"Could not move in new application -- Error $\?\"\n    log_cmd  \"Attempting to restore old application\"\n    mv -f \"${BACKUP_PARENT}\"/* \"$APP_PARENT\"\n    PROCEED\x3D$false\n  fi\nfi\n\n#\n# Removed the backup folder if everything has gone swimmingly so\n#\nif [ $PROCEED \x3D\x3D $true ]\nthen\n  log_cmd \'Removing backup\'\n  rm -r \"$BACKUP_PARENT\"\nfi\n\n#\n# Launch the application\n#\nif [ $PROCEED \x3D $true ]\nthen\n  log_cmd \'Launching new app\'\n  \"$APP_PARENT/$NEW_APP_NAME\"\nelse\n  log_cmd \'Launching old app\'\n  \"$APP_PARENT/$APP_NAME\"\nfi\n\nexit\n\nlog_cmd  \'Removing temp folder\'\nrm -fr \"$TEMP_FOLDER_PATH\"\n"
	#tag EndConstant


	#tag ViewBehavior
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ReplacementExecutableName"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
