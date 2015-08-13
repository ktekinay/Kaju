#tag Class
Protected Class OptionInvalidKeyValueException
Inherits OptionParserException
	#tag Note, Name = Overview
		Raised by `OptionParser.Parse` when a value is not valid for the given key. For example, if a
		`FileOption` requires that the file be readable and the parameter given is not readable, this
		exception will be raised. Another example, say the `--age` parameter is an integer and the
		`MinimumValue` and `MaximumValue` for the option is set to 1 and 99 but the user supplies
		220, this exception will be raised.
		
	#tag EndNote


	#tag ViewBehavior
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
	#tag EndViewBehavior
End Class
#tag EndClass
