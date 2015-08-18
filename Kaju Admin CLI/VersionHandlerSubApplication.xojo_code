#tag Class
Protected Class VersionHandlerSubApplication
Inherits FileHandlerSubApplication
	#tag Event
		Sub AddOptions(parser As OptionParser)
		  dim o as new Option( "v", kOptionVersion, "The version number (required)", Option.OptionType.String )
		  o.IsRequired = true
		  parser.AddOption o
		  
		  RaiseEvent AddOptions( parser )
		  
		End Sub
	#tag EndEvent

	#tag Event
		Function Run(file As KajuFile, adminFile As FolderItem, options As OptionParser) As Integer
		  dim version as Kaju.UpdateInformation = file.GetVersion( options.StringValue( kOptionVersion ) )
		  
		  //
		  // The version might be nil so the subclass must be ready for that
		  //
		  dim saveFile as boolean = true
		  dim err as integer = RaiseEvent Run( version, file, options, saveFile )
		  if saveFile and err = App.kErrorNoError then
		    file.SaveTo adminFile
		  end if
		  
		  return err
		End Function
	#tag EndEvent


	#tag Hook, Flags = &h0
		Event AddOptions(parser As OptionParser)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event Run(version As Kaju.UpdateInformation, file As KajuFile, options As OptionParser, ByRef saveFile As Boolean) As Integer
	#tag EndHook


	#tag Constant, Name = kOptionVersion, Type = String, Dynamic = False, Default = \"version", Scope = Protected
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
