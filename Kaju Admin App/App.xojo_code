#tag Class
Protected Class App
Inherits Application
	#tag Event
		Sub Open()
		  //
		  // Create the pref folder
		  //
		  
		  dim f as FolderItem = SpecialFolder.ApplicationData.Child( "Kaju Admin" )
		  if not f.Exists then
		    f.CreateAsFolder
		  end if
		  
		  dim u as new Kaju.UpdateChecker( f )
		  
		  dim r as double
		  
		  r = Kaju.VersionToDouble( "1.2a999" )
		  r = Kaju.VersionToDouble( "1.2b3" )
		  r = Kaju.VersionToDouble( "1.2" )
		  r = Kaju.VersionToDouble( "1.3.999d777" )
		  
		  dim vers as string = Kaju.AppVersionString
		  vers = Kaju.VersionStringFor( 1, 3, 44 )
		End Sub
	#tag EndEvent


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
