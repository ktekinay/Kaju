#tag Class
Protected Class BinaryInformation
	#tag Method, Flags = &h0
		Sub Constructor(data As JSONItem)
		  Kaju.JSONToPoperties( data, self )
		End Sub
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  if URL = "" then
			    return ""
			  end if
			  
			  dim cnt as integer = URL.CountFields( "/" )
			  dim name as string = URL.NthField( "/", cnt )
			  name = DecodeURLComponent( name )
			  
			  return name
			End Get
		#tag EndGetter
		FileName As String
	#tag EndComputedProperty

	#tag Property, Flags = &h0
		Hash As String
	#tag EndProperty

	#tag Property, Flags = &h0
		URL As String
	#tag EndProperty


End Class
#tag EndClass
