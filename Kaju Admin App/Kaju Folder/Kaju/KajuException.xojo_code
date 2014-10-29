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

	#tag Constant, Name = kErrorIncorrectPacketMarker, Type = String, Dynamic = False, Default = \"The update packet signature marker was incorrect.", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kErrorIncorrectPacketSignature, Type = String, Dynamic = False, Default = \"The RSA signature of the update packet cannot be verified.", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kErrorNoUpdateDataAvailable, Type = String, Dynamic = False, Default = \"Could not get update data.", Scope = Public
	#tag EndConstant


End Class
#tag EndClass
