#tag Class
Protected Class EditVersionApp
Inherits VersionHandlerSubApplication
	#tag Event
		Sub AddOptions(parser As OptionParser)
		  dim o as new Option( "", kOptionSet, "Set a key=value or key=@/path/to/file", Option.OptionType.String )
		  o.IsRequired = true
		  o.IsArray = true
		  parser.AddOption o 
		End Sub
	#tag EndEvent

	#tag Event
		Function GetDescription() As String
		  return kDescription
		End Function
	#tag EndEvent

	#tag Event
		Function Run(version As Kaju.UpdateInformation, file As KajuFile, options As OptionParser, ByRef saveFile As Boolean) As Integer
		  #pragma unused saveFile
		  
		  dim o as Option = options.OptionValue( kOptionSet )
		  dim params() as variant = o.Value
		  
		  for each param as string in params
		    
		  next
		  
		  return App.kErrorNoError
		End Function
	#tag EndEvent


	#tag Constant, Name = kDescription, Type = String, Dynamic = False, Default = \"Edit a version", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kOptionSet, Type = String, Dynamic = False, Default = \"set", Scope = Private
	#tag EndConstant


End Class
#tag EndClass
