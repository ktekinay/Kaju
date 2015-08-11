#tag Class
Protected Class DeleteVersionApp
Inherits VersionHandlerSubApplication
	#tag Event
		Function GetDescription() As String
		  return kDescription
		End Function
	#tag EndEvent

	#tag Event
		Function Run(version As Kaju.UpdateInformation, file As KajuFile, options As OptionParser) As Integer
		  
		End Function
	#tag EndEvent


	#tag Constant, Name = kDescription, Type = String, Dynamic = False, Default = \"Delete a version", Scope = Private
	#tag EndConstant


End Class
#tag EndClass
