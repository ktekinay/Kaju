#tag Class
Protected Class CreateApp
Inherits SubApplication
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
		  #pragma unused options
		  
		  dim file as new KajuFile
		  file.SaveTo adminFile
		  
		  return App.kErrorNoError
		End Function
	#tag EndEvent


	#tag Constant, Name = kDescription, Type = String, Dynamic = False, Default = \"Create a new admin file", Scope = Private
	#tag EndConstant


End Class
#tag EndClass
