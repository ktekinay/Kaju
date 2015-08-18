#tag Class
Protected Class AddVersionApp
Inherits VersionHandlerSubApplication
	#tag Event
		Sub AddOptions(parser As OptionParser)
		  dim o as new Option( "a", kOptionAppName, "The app name for this version (required)", Option.OptionType.String )
		  o.IsRequired = true
		  parser.AddOption o
		  
		End Sub
	#tag EndEvent

	#tag Event
		Function GetAdditionalHelp() As String
		  return kAdditionalHelp
		End Function
	#tag EndEvent

	#tag Event
		Function GetDescription() As String
		  return kDescription
		End Function
	#tag EndEvent

	#tag Event
		Function Run(version As Kaju.UpdateInformation, file As KajuFile, options As OptionParser, ByRef saveFile As Boolean) As Integer
		  #pragma unused version
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


	#tag Constant, Name = kAdditionalHelp, Type = String, Dynamic = False, Default = \"Add a version to the given admin file. The version number should be unique in the file and the app name must be provided.", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kDescription, Type = String, Dynamic = False, Default = \"Add a version", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kOptionAppName, Type = String, Dynamic = False, Default = \"app-name", Scope = Private
	#tag EndConstant


	#tag ViewBehavior
		#tag ViewProperty
			Name="AdditionalHelp"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Description"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Usage"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
