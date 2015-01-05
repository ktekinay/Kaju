#tag Class
Protected Class App
Inherits Application
	#tag Event
		Sub Open()
		  mPrefFolder = SpecialFolder.ApplicationData.Child( "Kaju Update Test" )
		  if not mPrefFolder.Exists then
		    mPrefFolder.CreateAsFolder
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
