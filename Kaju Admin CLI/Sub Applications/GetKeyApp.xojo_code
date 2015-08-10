#tag Class
Protected Class GetKeyApp
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
		  dim file as new KajuFile
		  file.Load adminFile
		  
		  print file.PublicKey
		  return App.kErrorNoError
		End Function
	#tag EndEvent


	#tag Constant, Name = kDescription, Type = String, Dynamic = False, Default = \"Get the public key", Scope = Private
	#tag EndConstant


End Class
#tag EndClass
