#tag Class
Protected Class ExportApp
Inherits FileHandlerSubApplication
	#tag Event
		Sub AddOptions(parser As OptionParser)
		  parser.ExtrasRequired = 1
		  
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
		Function Run(file As KajuFile, adminFile As FolderItem, options As OptionParser) As Integer
		  for each outPath as string in options.Extra
		    dim out as FolderItem = OptionParser.GetRelativeFolderItem( outPath )
		    file.ExportTo out
		  next
		  
		  //
		  // Save the lastest export name
		  //
		  file.SaveTo adminFile
		  return App.kErrorNoError
		End Function
	#tag EndEvent


	#tag Constant, Name = kAdditionalHelp, Type = String, Dynamic = False, Default = \"Export the Update Information file to the given path. If that path is a directory\x2C will use the last given export file name.", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kDescription, Type = String, Dynamic = False, Default = \"Export the update info file", Scope = Private
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
