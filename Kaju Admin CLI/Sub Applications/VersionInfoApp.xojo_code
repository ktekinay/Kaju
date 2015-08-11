#tag Class
Protected Class VersionInfoApp
Inherits VersionHandlerSubApplication
	#tag Event
		Sub AddOptions(parser As OptionParser)
		  
		End Sub
	#tag EndEvent

	#tag Event
		Function GetDescription() As String
		  
		End Function
	#tag EndEvent

	#tag Event
		Function Run(version As Kaju.UpdateInformation, file As KajuFile, options As OptionParser, ByRef saveFile As Boolean) As Integer
		  
		End Function
	#tag EndEvent


	#tag Constant, Name = kDescription, Type = String, Dynamic = False, Default = \"Get all version information", Scope = Private
	#tag EndConstant


End Class
#tag EndClass
