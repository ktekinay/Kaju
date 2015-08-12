#tag Module
Protected Module FormatCodePreferences
	#tag Note, Name = About
		
		This module is optional. If present, the FormatCode IDE Script will use the constants found here instead
		of the ones in the script.
		
		The module does not need all of these constants, but must have at lease one or the script will fail.
		
		Most of the constants are booleans. The KeywordsTo... provide exceptions to the default CaseConversion.
		For example, if you want all of your keywords as title case except for if/then/else, you would
		set CaseConversion = "kTitleCase" and KeywordsToLowerCase to "if,then,else". (Spaces around the
		keywords will be stripped by the script).
		
		The KeywordsTo... constants are comma-delimited strings.
	#tag EndNote


	#tag Constant, Name = AlignAs, Type = Boolean, Dynamic = False, Default = \"False", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = CaseConversion, Type = String, Dynamic = False, Default = \"kLowerCase", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = DoDebug, Type = Boolean, Dynamic = False, Default = \"False", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = KeywordsToLowerCase, Type = String, Dynamic = False, Default = \"if\x2C then\x2C end\x2C while\x2C wend\x2C select\x2C case\x2C print\n", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = KeywordsToTitleCase, Type = String, Dynamic = False, Default = \"Int8\x2C Int16\x2C Int32\x2C Int64\x2C UInt8\x2C UInt16\x2C UInt32\x2C UInt64\n\nDictionary\x2C Date\n\nTrue\x2C False\n\nClose\n\nRaiseEvent\n\nBackgroundTasks\nNilObjectChecking\nStackOverflowChecking\nBoundsChecking\nDebugBuild", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = KeywordsToUpperCase, Type = String, Dynamic = False, Default = \"", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = PadComma, Type = Boolean, Dynamic = False, Default = \"True", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = PadOperators, Type = Boolean, Dynamic = False, Default = \"True", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = PadParensInner, Type = Boolean, Dynamic = False, Default = \"True", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = PadParensOuter, Type = Boolean, Dynamic = False, Default = \"False", Scope = Protected
	#tag EndConstant


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
End Module
#tag EndModule
