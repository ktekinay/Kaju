#tag Class
Protected Class AddVersionApp
Inherits VersionHandlerSubApplication
	#tag Event
		Sub AddOptions(parser As OptionParser)
		  dim o as new Option( "a", kOptionAppName, "The app name for this version.", Option.OptionType.String )
		  o.IsRequired = true
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
		  
		  dim appName as string = options.StringValue( kOptionAppName )
		  dim versionString as string = options.StringValue( kOptionVersion )
		  
		  dim u as new Kaju.UpdateInformation
		  u.Version = versionString
		  u.AppName = appName
		  
		  file.KajuData.Append u
		  return App.kErrorNoError
		End Function
	#tag EndEvent


	#tag Constant, Name = kDescription, Type = String, Dynamic = False, Default = \"Add a version", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kOptionAppName, Type = String, Dynamic = False, Default = \"app-name", Scope = Private
	#tag EndConstant


End Class
#tag EndClass
