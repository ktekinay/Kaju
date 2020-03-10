#tag Class
Protected Class App
Inherits Application
	#tag Event
		Sub Close()
		  // The App.UpdateInitiater's Destructor should fire automatically on quit,
		  // but sometimes it doesn't, so we force the issue here.
		  
		  App.UpdateInitiater = nil
		End Sub
	#tag EndEvent

	#tag Event
		Sub Open()
		  mPrefFolder = SpecialFolder.ApplicationData.Child( "Kaju Update Test" )
		  if not mPrefFolder.Exists then
		    mPrefFolder.CreateAsFolder
		  end if
		  
		  //
		  // See if this was a launch after an attempted update
		  //
		  dim fromVersion as string
		  dim fromBits as Kaju.BitTypes
		  
		  if Kaju.DidLastUpdateSucceed( fromVersion, fromBits ) then
		    dim mustQuit as boolean
		    
		    dim msg as string = "You have successfully updated from version " + fromVersion // Add the "." below
		    
		    //
		    // See if the bits have changed
		    //
		    dim explanation as string
		    if ( fromBits = Kaju.BitTypes.Bits32 and Target64Bit ) or _
		      ( fromBits = Kaju.BitTypes.Bits64 and Target32Bit ) then
		      msg = msg + " " + if( Target32Bit, " (64-bit)", " (32-bit)" )
		      
		      #if not TargetMacOS then
		        mustQuit = true
		        explanation = "Due to the nature of this update, you must relaunch the app manually. " + _
		        "This only happens when you switch from a 32-bit to 64-bit version, or vice-versa."
		      #endif
		    end if
		    
		    msg = msg + "."
		    
		    dim dlg as new MessageDialog
		    dlg.Message = msg
		    dlg.Explanation = explanation
		    dlg.ActionButton.Caption = if( mustQuit, "Quit", "Cool!" )
		    dlg.CancelButton.Visible = false
		    dlg.AlternateActionButton.Visible = false
		    
		    call dlg.ShowModal
		    if mustQuit then
		      quit
		    end if
		    
		  elseif Kaju.DidLastUpdateFail then
		    MsgBox "The last update failed. Please try again."
		  end if
		  
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Function PrefFolder() As FolderItem
		  return mPrefFolder
		End Function
	#tag EndMethod


	#tag Note, Name = Alterations
		//MyKajuChanges 0
		
		I have made the following alterations to the workflow of Kaju:
		1. PreCheck is done after the KajuUpdateWindow is shown, rather than before, when it can fail silently and Kaju never check for updates
		2. For Windows builds only, an InnoSetup installer is registered in the Kau Admin app rather than a zip file
		3. After the setup.exe is downloaded into a temp folder, when the user presses Quit & Install, it launches the setup.exe
		
		I made these changes because:
		1. I had issues with the PreCheck failing silently (due to xcopy not being available - a problem with my %PATH% system environment variable)
		2. PreCheck failing because I did not have write permissions to the Application Files folder (must run as administrator)
		3. The final steps of the normal Kaju workflow were failing when copying files from the decompressed folder
		"File creation error - The requested operation cannot be performed on a file with a user-mapped section open." ?scanning by Windows Security
		
		I think the benefits of these changes are:
		1. Stops PreCheck from failing silently
		2. Allows the update to proceed, even if the app has not been run as administrator
		3. The InnoSetup installer workflow is familiar to most users and can be streamlined to minimise the installation steps
		4. The same InnoSetup installer can be used for new installations and updates
		5. The Registry entry for the app in 
		HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{YourAppID}_is1 is updated with the new version number
	#tag EndNote


	#tag Property, Flags = &h21
		Private mPrefFolder As FolderItem
	#tag EndProperty

	#tag Property, Flags = &h0
		UpdateInitiater As Kaju.UpdateInitiater
	#tag EndProperty


	#tag Constant, Name = kEditClear, Type = String, Dynamic = False, Default = \"&Delete", Scope = Public
		#Tag Instance, Platform = Windows, Language = Default, Definition  = \"&Delete"
		#Tag Instance, Platform = Linux, Language = Default, Definition  = \"&Delete"
	#tag EndConstant

	#tag Constant, Name = kFileQuit, Type = String, Dynamic = False, Default = \"&Quit", Scope = Public
		#Tag Instance, Platform = Windows, Language = Default, Definition  = \"E&xit"
	#tag EndConstant

	#tag Constant, Name = kFileQuitShortcut, Type = String, Dynamic = False, Default = \"", Scope = Public
		#Tag Instance, Platform = Mac OS, Language = Default, Definition  = \"Cmd+Q"
		#Tag Instance, Platform = Linux, Language = Default, Definition  = \"Ctrl+Q"
	#tag EndConstant


End Class
#tag EndClass
