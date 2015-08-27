#tag Class
Protected Class App
Inherits ConsoleApplication
	#tag Event
		Function Run(args() as String) As Integer
		  dim errCode as integer = kErrorNoError
		  
		  RegisterSubApps
		  
		  dim caller as string = args( 0 )
		  
		  dim parser as new OptionParser( "kaju", "Administer Kaju files" )
		  
		  dim o as new Option( "", kOptionFile, "The admin file", Option.OptionType.File )
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
		  
		  if args.Ubound = 0 or parser.HelpRequested then
		    PrintMainHelp parser
		    
		  else
		    
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
		      PrintSubAppHelp( subappKey, subapp, subappParser )
		      
		    else
		      
		      //
		      // Get the admin file
		      //
		      dim adminFile as FolderItem = parser.FileValue( kOptionFile )
		      if adminFile is nil then
		        print "No admin file specified"
		        errCode = kErrorGeneralError
		        
		      else
		        try
		          errCode = subapp.Execute( adminFile, subappParser )
		        catch err as RuntimeException
		          if err isa EndException or err isa ThreadEndException then
		            raise err
		          end if
		          
		          print "Unexpected error: " + err.Message
		          errCode = kErrorGeneralError
		        end try
		      end if
		      
		    end if
		  end if
		  
		  #if DebugBuild and TargetRemoteDebugger then
		    print "Press return to continue..."
		    call input
		  #endif
		  
		  return errCode
		  
		End Function
	#tag EndEvent


	#tag Method, Flags = &h21
		Private Function PadRight(s As String, width As Integer) As String
		  if s.Len >= width then
		    return s
		  end if
		  
		  static padder as string = " "
		  while padder.Len < width
		    padder = padder + padder
		  wend
		  
		  s = s + padder.Left( width - s.Len )
		  return s
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub PrintMainHelp(parser As OptionParser)
		  // Have to get the names and descriptions of each of the registered subapps
		  
		  dim subAppNameMaxLen as integer = 0
		  dim subAppNames() as string
		  dim subAppDescriptions() as string
		  for each k as variant in SubAppDictionary.Keys
		    dim subApp as SubApplication = SubAppDictionary.Value( k )
		    
		    if k.StringValue.Len > subAppNameMaxLen then
		      subAppNameMaxLen = k.StringValue.Len
		    end if
		    
		    subAppNames.Append k.StringValue
		    
		    dim thisDescription as string = subApp.Description
		    subAppDescriptions.Append thisDescription
		  next
		  subAppNames.SortWith subAppDescriptions
		  
		  print LongVersion
		  print ""
		  print "Usage: " + kAppName + " [global-parameters] app-key [parameters]"
		  print ""
		  
		  if parser isa OptionParser then
		    parser.ShowHelp( "Global parameters" )
		    print ""
		  end if
		  
		  print "Where app-key is:"
		  for i as integer = 0 to subAppNames.Ubound
		    print "  " + PadRight( subAppNames( i ), subAppNameMaxLen ) + " - " + subAppDescriptions( i )
		  next
		  print ""
		  print "For help on a given application, use:"
		  print "  " + kAppName + " app-key --help"
		  print ""
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub PrintSubAppHelp(subAppName As String, subApp As SubApplication, options As OptionParser)
		  dim subAppUsage as string = subApp.Usage
		  
		  if subAppUsage = "" then
		    if options.ExtrasRequired > 0 then
		      for i as integer = 1 to options.ExtrasRequired
		        subAppUsage = subAppUsage + " /path/to/file" + Str( i )
		      next i
		      subAppUsage = subAppUsage + " [/path/to/file ...]"
		    end if
		  end if
		  
		  print LongVersion
		  print ""
		  print "Usage:"
		  print "  " + kAppName + " --file /path/to/admin/file " + _
		  subAppName + if( subAppUsage <> "", " " + subAppUsage, "" ) + " [parameters]"
		  
		  if options <> nil then
		    options.AdditionalHelpNotes = subApp.AdditionalHelp
		    
		    print ""
		    print "Help for:"
		    options.ShowHelp()
		  end if
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
