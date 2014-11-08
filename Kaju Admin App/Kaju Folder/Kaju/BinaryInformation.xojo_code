#tag Class
Protected Class BinaryInformation
	#tag Method, Flags = &h0
		Sub Constructor(data As JSONItem)
		  Kaju.JSONToPoperties( data, self )
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		Hash As String
	#tag EndProperty

	#tag Property, Flags = &h0
		URL As String
	#tag EndProperty


End Class
#tag EndClass
