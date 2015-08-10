#tag Class
Protected Class ExportApp
Inherits SubApplication
	#tag Event
		Sub AddOptions(parser As OptionParser)
		  parser.ExtrasRequired = 1
		  
		End Sub
	#tag EndEvent

	#tag Event
		Function GetDescription() As String
		  return kDescription
		End Function
	#tag EndEvent

	#tag Event
		Sub PrintHelp(options As OptionParser)
		  
		End Sub
	#tag EndEvent

	#tag Event
		Function Run(adminFile As FolderItem, options As OptionParser) As Integer
		  if options.Extra.Ubound <> 0 then
		    print "Too many extras specified"
		    return App.kErrorGeneralError
		  end if
		  
		  dim file as new KajuFile
		  file.Load adminFile
		  
		  dim outPath as string = options.Extra( 0 )
		  dim out as new FolderItem( outPath, FolderItem.PathTypeShell )
		  
		  file.ExportTo out
		  return App.kErrorNoError
		End Function
	#tag EndEvent


	#tag Constant, Name = kDescription, Type = String, Dynamic = False, Default = \"Export the update info file", Scope = Private
	#tag EndConstant


End Class
#tag EndClass
