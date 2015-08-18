#tag Class
Protected Class CreateApp
Inherits SubApplication
	#tag Event
		Sub AddOptions(parser As OptionParser)
		  parser.AddOption new Option( "", kOptionForce, "Force an existing file to be overwritten", Option.OptionType.Boolean)
		  
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
		Function Run(adminFile As FolderItem, options As OptionParser) As Integer
		  #pragma unused options
		  
		  if adminFile.Exists and not options.BooleanValue( kOptionForce, false ) then
		    
		    print "File already exists"
		    return App.kErrorGeneralError
		    
		  else
		    
		    dim file as new KajuFile
		    file.SaveTo adminFile
		    
		    return App.kErrorNoError
		  end if
		  
		End Function
	#tag EndEvent


	#tag Constant, Name = kAdditionalHelp, Type = String, Dynamic = False, Default = \"Creates a new admin file at the given file path.", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kDescription, Type = String, Dynamic = False, Default = \"Create a new admin file", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kOptionForce, Type = String, Dynamic = False, Default = \"force", Scope = Private
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
