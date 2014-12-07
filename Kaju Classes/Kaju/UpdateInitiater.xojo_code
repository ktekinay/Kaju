#tag Class
Protected Class UpdateInitiater
	#tag Method, Flags = &h0
		Sub Cancel()
		  ReplacementApp = nil
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub Destructor()
		  RunScript
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub RunScript()
		  if ReplacementApp is nil or not ReplacementApp.Exists then
		    ReplacementApp = nil
		    return
		  end if
		  
		  dim script as string = kUpdaterScript
		  
		  //
		  // Set up a temporary folder
		  //
		  dim tempFolder as FolderItem = Kaju.GetTemporaryFolder
		  
		  //
		  // Get a FolderItem for the current app
		  //
		  dim appFolderItem as FolderItem
		  
		  #if TargetMacOS then
		    
		    appFolderItem = App.ExecutableFile.Parent
		    while appFolderItem.Name <> "Contents"
		      appFolderItem = appFolderItem.Parent
		    wend
		    appFolderItem = appFolderItem.Parent
		    
		  #else
		    
		    #pragma warning "Do other platforms"
		    
		  #endif
		  
		  script = script.ReplaceAll( kMarkerAppName, ShellQuote( appFolderItem.Name ) )
		  script = script.ReplaceAll( kMarkerAppParent, ShellQuote( appFolderItem.Parent.NativePath ) )
		  script = script.ReplaceAll( kMarkerNewAppName, ShellQuote( ReplacementApp.Name ) )
		  script = script.ReplaceAll( kMarkerNewAppParent, ShellQuote( ReplacementApp.Parent.NativePath ) )
		  script = script.ReplaceAll( kMarkerTempFolder, ShellQuote( TempFolder.NativePath ) )
		  
		  //
		  // Set up the PID file
		  //
		  dim pid as FolderItem = GetTemporaryFolderItem()
		  script = script.ReplaceAll( kMarkerPIDFilePath, ShellQuote( pid.NativePath ) )
		  
		  //
		  // Prepare for saving
		  //
		  #if TargetMacOS or TargetLinux then
		    script = ReplaceLineEndings( script, EndOfLine.UNIX )
		  #else
		    script = ReplaceLineEndings( script, EndOfLine.Windows )
		  #endif
		  
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
		  #if TargetMacOS or TargetLinux then
		    dim p as new Permissions( scriptFile.Permissions )
		    p.OwnerExecute = true
		    p.GroupExecute = true
		    p.OthersExecute = true
		    scriptFile.Permissions = p
		  #endif
		  
		  //
		  // Run the script
		  //
		  dim sh as new Shell
		  sh.Mode = 1 // Asynchronous
		  
		  dim cmd as string
		  #if TargetMacOS or TargetLinux then
		    cmd = "nohup " + ShellQuote( scriptFile.NativePath ) + " &"
		  #endif
		  
		  sh.Execute( cmd )
		  for i as integer = 1 to 10000
		    sh.Poll
		    App.YieldToNextThread
		  next i
		  
		  Exception err As RuntimeException
		    MsgBox "Could not complete update - " + err.Message
		    
		  Finally
		    
		    if pid <> nil then
		      pid.Delete
		    end if
		    
		    
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function ShellQuote(s As String) As String
		  s = s.ReplaceAll( "'", "'\''" )
		  s = "'" + s + "'"
		  
		  return s
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		ReplacementApp As FolderItem
	#tag EndProperty


	#tag Constant, Name = kMarkerAppName, Type = String, Dynamic = False, Default = \"<<APP_NAME>>", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kMarkerAppParent, Type = String, Dynamic = False, Default = \"<<APP_PARENT>>", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kMarkerNewAppName, Type = String, Dynamic = False, Default = \"<<NEW_APP_NAME>>", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kMarkerNewAppParent, Type = String, Dynamic = False, Default = \"<<NEW_APP_PARENT>>", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kMarkerPIDFilePath, Type = String, Dynamic = False, Default = \"<<PID_FILE_PATH>>", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kMarkerTempFolder, Type = String, Dynamic = False, Default = \"<<TEMP_FOLDER>>", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kScriptName, Type = String, Dynamic = False, Default = \"updater.sh", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kUpdaterScript, Type = String, Dynamic = False, Default = \"", Scope = Private
		#Tag Instance, Platform = Mac OS, Language = Default, Definition  = \"#!/bin/sh\n\n#\n# These will be filled in by the calling app\n#\n\nAPP_NAME\x3D<<APP_NAME>>\nAPP_PARENT\x3D<<APP_PARENT>>\nNEW_APP_NAME\x3D<<NEW_APP_NAME>>\nNEW_APP_PARENT\x3D<<NEW_APP_PARENT>>\nTEMP_FOLDER_PATH\x3D<<TEMP_FOLDER>>\nPID_FILE\x3D<<PID_FILE_PATH>>\n\n#\n# -----------------\n#\n\nAPP_PATH\x3D$APP_PARENT/$APP_NAME\nNEW_APP_PATH\x3D$NEW_APP_PARENT/$NEW_APP_NAME\n\nRENAMED_APP_NAME\x3D`echo \"$APP_NAME\" | /usr/bin/sed -E s/\\.[aA][pP]{2}//`-`date +%Y%m%d%H%M%S`.app\nRENAMED_APP_PATH\x3D$APP_PARENT/$RENAMED_APP_NAME\n\nTAG_STRING\x3D\'Kaju Update Script\'\n\ncounter\x3D10\nwhile [ -f \"$PID_FILE\" ]\ndo\n  /usr/bin/logger -t \"$TAG_STRING\" \"Checking to see if $PIDFILE exists\x2C $counter\"\n  sleep 1\n  \n  let counter\x3Dcounter-1\n  \n  if [ $counter \x3D\x3D 0 ]\n  then\n  \t/usr/bin/logger -t \"$TAG_STRING\" \'ERROR: Could not update app\x2C it never quit\'\n  \texit 1\n  fi\ndone\n\nPROCEED\x3D`true`\n\n#\n# Rename the old application\n#\n/usr/bin/logger -t \"$TAG_STRING\" \"Renaming old application $APP_NAME to $RENAMED_APP_NAME\"\nmv \"$APP_PATH\" \"$RENAMED_APP_PATH\"\n\n#\n# Make sure the renamed file exists\n#\nif [ -d \"$RENAMED_APP_PATH\" ]\nthen\n  /usr/bin/logger -t \"$TAG_STRING\" \'...confirmed\'\nelse\n  /usr/bin/logger -t \"$TAG_STRING\" \"Could not rename old application to $RENAMED_APP_PATH\"\n  PROCEED\x3D`false`\nfi\n\n#\n# Move in the replacement app\n#\nif $PROCEED\nthen\n  /usr/bin/logger -t \"$TAG_STRING\" \"Moving new application $NEW_APP_NAME to folder $APP_PARENT\"\n  mv \"$NEW_APP_PATH\" \"$APP_PARENT\"\n\n  #\n  # Make sure it moved\n  #\n  if [ -d \"$APP_PARENT/$NEW_APP_NAME\" ]\n  then\n    /usr/bin/logger -t \"$TAG_STRING\" \'...confirmed\'\n  else\n    /usr/bin/logger -t \"$TAG_STRING\" \"Could not move in new application\"\n    /usr/bin/logger -t \"$TAG_STRING\" \"Attempting to restore old application and launch it\"\n    mv \"$RENAMED_APP_PATH\" \"$APP_PATH\"\n    open \"$APP_PATH\"\n    PROCEED\x3D`false`\n  fi\nfi\n\nif $PROCEED\nthen\n  /usr/bin/logger -t \"$TAG_STRING\" \"Removing old application $RENAMED_APP_NAME\"\n  rm -fr \"$RENAMED_APP_PATH\"\n  \n  APP_PATH\x3D$APP_PARENT/$NEW_APP_NAME\n  /usr/bin/logger -t \"$TAG_STRING\" \"Starting new application at $APP_PATH\"\n  \n  open \"$APP_PATH\"\nfi\n\n/usr/bin/logger -t \"$TAG_STRING\" \'Removing temp folder\'\nrm -fr \"$TEMP_FOLDER_PATH\"\n"
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
