#tag Class
Protected Class OptionParserException
Inherits RuntimeException
	#tag Method, Flags = &h1000
		Sub Constructor(code As Integer = 1, msg As String)
		  Me.ErrorNumber = code
		  Me.Message = msg
		End Sub
	#tag EndMethod


	#tag Note, Name = Overview
		Base exception for all `OptionParser` exceptions.
		
		It will be raised, however, in two primary situations
		
		1. Invalid use of the `Option` class, for example, you attempt to add
		   a new option but do not give a short or long option name.
		2. If the `OptionParser` has the `ExtrasRequired` parameter set and that
		   value has not been met by the user.
		
		
	#tag EndNote


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
