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
		  dim file as new KajuFile
		  file.Load adminFile
		  
		  for each outPath as string in options.Extra
		    dim out as new FolderItem( outPath, FolderItem.PathTypeShell )
		    
		    file.ExportTo out
		  next
		  
		  return App.kErrorNoError
		End Function
	#tag EndEvent


	#tag Constant, Name = kDescription, Type = String, Dynamic = False, Default = \"Export the update info file", Scope = Private
	#tag EndConstant


End Class
#tag EndClass
