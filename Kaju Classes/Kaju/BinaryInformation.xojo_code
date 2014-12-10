#tag Class
Protected Class BinaryInformation
Inherits Kaju.Information
	#tag Method, Flags = &h1000
		Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(data As JSONItem)
		  Kaju.JSONToProperties( data, self )
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ToJSON() As JSONItem
		  dim j as new JSONItem
		  
		  j.Value( "Hash" ) = Hash
		  j.Value( "URL" ) = URL
		  if ExecutableName <> "" then
		    j.Value( "ExecutableName" ) = ExecutableName
		  end if
		  
		  return j
		  
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		ExecutableName As String
	#tag EndProperty

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


	#tag ViewBehavior
		#tag ViewProperty
			Name="ExecutableName"
			Group="Behavior"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FileName"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Hash"
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
			Name="URL"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
