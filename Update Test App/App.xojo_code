#tag Class
Protected Class App
Inherits Application
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
