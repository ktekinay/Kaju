#tag Class
Class KajuException
Inherits RuntimeException
	#tag Method, Flags = &h0
		Sub Constructor(msg As String)
		  self.Message = msg
		  
		End Sub
	#tag EndMethod


	#tag Constant, Name = kErrorBadUpdateData, Type = String, Dynamic = False, Default = \"The update data cannot be read.", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kErrorCantFindLibsFolder, Type = String, Dynamic = False, Default = \"Can\xE2\x80\x99t locate this applications Libs folder.", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kErrorIncorrectPacketMarker, Type = String, Dynamic = False, Default = \"The update packet signature marker was incorrect.", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kErrorIncorrectPacketSignature, Type = String, Dynamic = False, Default = \"The RSA signature of the update packet cannot be verified.", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kErrorMissingUpdateURL, Type = String, Dynamic = False, Default = \"The update URL is missing.", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kErrorNoUpdateDataAvailable, Type = String, Dynamic = False, Default = \"Could not get update data.", Scope = Public
	#tag EndConstant


	#tag ViewBehavior
		#tag ViewProperty
			Name="ErrorNumber"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
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
			Name="Message"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Reason"
			Group="Behavior"
			Type="Text"
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
	#tag EndViewBehavior
End Class
#tag EndClass
