#tag Class
Protected Class App
Inherits ConsoleApplication
	#tag Event
		Function Run(args() as String) As Integer
		  RegisterSubApps
		  
		  dim caller as string = args( 0 )
		  
		  dim parser as new OptionParser( "kaju", "Administer Kaju files" )
		  
		  dim o as new Option( "", kOptionFile, "The admin file", Option.OptionType.File )
		  o.IsRequired = true
		  parser.AddOption o
		  
		  dim appArgs() as string
		  appArgs.Append caller
		  
		  for i as integer = 1 to args.Ubound
		    dim arg as string = args( i )
		    if SubAppDictionary.HasKey( arg ) then
		      exit for i
		    else
		      appArgs.Append arg
		    end if
		  next
		  
		  parser.Parse appArgs
		  
		  if parser.HelpRequested then
		    PrintMainHelp parser
		    return kErrorNoError
		  end if
		  
		  //
		  // Get the admin file
		  //
		  dim adminFile as FolderItem = parser.FileValue( kOptionFile )
		  
		  //
		  // Adjust the args
		  //
		  for i as integer = 0 to appArgs.Ubound
		    args.Remove 0
		  next
		  
		  //
		  // The first argument must be the subapp name
		  //
		  dim subappKey as string = args( 0 )
		  dim subapp as SubApplication = SubAppDictionary.Value( subappKey )
		  
		  //
		  // Substitute the caller for the subapp name
		  //
		  args( 0 ) = caller
		  
		  //
		  // Get the options
		  //
		  dim subappParser as new OptionParser( subappKey, "" )
		  subapp.AddOptions subappParser
		  subappParser.Parse args
		  
		  if subappParser.HelpRequested then
		    PrintSubAppHelp
		    return kErrorNoError
		  end if
		  
		  return subapp.Execute( adminFile, subappParser )
		  
		End Function
	#tag EndEvent


	#tag Method, Flags = &h21
		Private Sub PrintMainHelp(options As OptionParser)
		  #pragma warning "Finish this!"
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub PrintSubAppHelp()
		  #pragma warning "Finish this!"
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub RegisterSubApps()
		  SubAppDictionary = new Dictionary
		  
		  SubAppDictionary.Value( kAppCreate ) = new CreateApp
		  SubAppDictionary.Value( kAppGetKey ) = new GetKeyApp
		  SubAppDictionary.Value( kAppExport ) = new ExportApp
		  SubAppDictionary.Value( kAppListVersions ) = new ListVersionsApp
		  SubAppDictionary.Value( kAppAddVersion ) = new AddVersionApp
		  SubAppDictionary.Value( kAppDeleteVersion ) = new DeleteVersionApp
		  SubAppDictionary.Value( kAppVersionInfo ) = new VersionInfoApp
		  SubAppDictionary.Value( kAppEditVersion ) = new EditVersionApp
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h21
		Private SubAppDictionary As Dictionary
	#tag EndProperty


	#tag Constant, Name = kAppAddVersion, Type = String, Dynamic = False, Default = \"addversion", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kAppCreate, Type = String, Dynamic = False, Default = \"create", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kAppDeleteVersion, Type = String, Dynamic = False, Default = \"deleteversion", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kAppEditVersion, Type = String, Dynamic = False, Default = \"editversion", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kAppExport, Type = String, Dynamic = False, Default = \"export", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kAppGetKey, Type = String, Dynamic = False, Default = \"getkey", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kAppListVersions, Type = String, Dynamic = False, Default = \"listversions", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kAppName, Type = String, Dynamic = False, Default = \"", Scope = Public
		#Tag Instance, Platform = Mac OS, Language = Default, Definition  = \"kaju"
		#Tag Instance, Platform = Linux, Language = Default, Definition  = \"kaju"
		#Tag Instance, Platform = Windows, Language = Default, Definition  = \"kaju.exe"
	#tag EndConstant

	#tag Constant, Name = kAppVersionInfo, Type = String, Dynamic = False, Default = \"versioninfo", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kErrorGeneralError, Type = Double, Dynamic = False, Default = \"1", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kErrorNoError, Type = Double, Dynamic = False, Default = \"0", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kOptionFile, Type = String, Dynamic = False, Default = \"file", Scope = Private
	#tag EndConstant


	#tag ViewBehavior
	#tag EndViewBehavior
End Class
#tag EndClass
