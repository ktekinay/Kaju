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
		  
		  script = script.ReplaceAll( kMarkerAppName, appFolderItem.Name )
		  script = script.ReplaceAll( kMarkerAppPath, appFolderItem.ShellPath )
		  script = script.ReplaceAll( kMarkerNewAppPath, ReplacementApp.ShellPath )
		  
		  dim tempFolder as FolderItem = Kaju.GetTemporaryFolder
		  script = script.ReplaceAll( kMarkerTempFolderPath, tempFolder.ShellPath )
		  
		  //
		  // Remove other platform code
		  //
		  dim rx as new RegEx
		  rx.Options.ReplaceAllMatches = true
		  rx.SearchPattern = "(?sU)(?!" + kMarkerPlatform + ")(<<(?:MAC|LINUX|WINDOWS)_PLATFORM>>).*\g1"
		  script = rx.Replace( script )
		  
		  script = script.ReplaceAll( kMarkerPlatform, "" )
		  
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
		    cmd = "nohup " + scriptFile.ShellPath + " &"
		  #endif
		  
		  sh.Execute( cmd )
		  
		  Exception err As RuntimeException
		    MsgBox "Could not complete update - " + err.Message
		    
		    
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		ReplacementApp As FolderItem
	#tag EndProperty


	#tag Constant, Name = kMarkerAppName, Type = String, Dynamic = False, Default = \"<<APP_NAME>>", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kMarkerAppPath, Type = String, Dynamic = False, Default = \"<<APP_PATH>>", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kMarkerNewAppPath, Type = String, Dynamic = False, Default = \"<<NEW_APP_PATH>>", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kMarkerPlatform, Type = String, Dynamic = False, Default = \"", Scope = Private
		#Tag Instance, Platform = Mac OS, Language = Default, Definition  = \"<<MAC_PLATFORM>>"
		#Tag Instance, Platform = Linux, Language = Default, Definition  = \"<<LINUX_PLATFORM>>"
		#Tag Instance, Platform = Windows, Language = Default, Definition  = \"<<WINDOWS_PLATFORM>>"
	#tag EndConstant

	#tag Constant, Name = kMarkerTempFolderPath, Type = String, Dynamic = False, Default = \"<<TEMP_FOLDER_PATH>>", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kScriptName, Type = String, Dynamic = False, Default = \"updater.sh", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kUpdaterScript, Type = String, Dynamic = False, Default = \"", Scope = Private
		#Tag Instance, Platform = Any, Language = Default, Definition  = \"#!/bin/sh\n\nAPP_NAME\x3D<<APP_NAME>>\nAPP_PATH\x3D<APP_PATH>>\nNEW_APP_PATH\x3D<<NEW_APP_PATH>>\nTEMP_FOLDER\x3D<<TEMP_FOLDER_PATH>>\nPID_FILE\x3D<<PID_FILE_PATH>>\n\nBACKUP_PATH\x3D$TEMP_FOLDER/$APP_NAME-`date +%Y%m%d%H%M%S`\n\ncounter\x3D10\nwhile [ -f $PID_FILE ]\ndo\n  echo \"Checking to see if $PIDFILE exists\x2C $counter\"\n  sleep 1\n  \n  let counter\x3Dcounter-1\n  \n  if [ $counter \x3D\x3D 0 ]\n  then\n  \techo \"Could not update app\x2C it never quit\"\n  \texit 1\n  fi\ndone\n\necho \"Moving old application\"\nmv $APP_PATH $BACKUP_PATH\n\necho \"Moving in new application\"\nmv $NEW_APP_PATH $APP_PATH\n\necho \"Removing temp folder\"\nrm -fr $TEMP_FOLDER\n\n<<MAC_PLATFORM>>\nopen $APP_PATH\n<<MAC_PLATFORM>>\n<<LINUX_PLATFORM>>\n$APP_PATH\n<<LINUX_PLATFORM>>\n"
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
