#tag Class
Protected Class DeleteVersionApp
Inherits VersionHandlerSubApplication
	#tag Event
		Function GetDescription() As String
		  return kDescription
		End Function
	#tag EndEvent

	#tag Event
		Function Run(version As Kaju.UpdateInformation, file As KajuFile, options As OptionParser, ByRef saveFile As Boolean) As Integer
		  #pragma unused saveFile
		  
		  if version is nil then
		    print "Version not found"
		    return App.kErrorGeneralError
		  end if
		  
		  file.KajuData.Remove file.KajuData.IndexOf( version )
		  return App.kErrorNoError
		End Function
	#tag EndEvent


	#tag Constant, Name = kDescription, Type = String, Dynamic = False, Default = \"Delete a version", Scope = Private
	#tag EndConstant


End Class
#tag EndClass
