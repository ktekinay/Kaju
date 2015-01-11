#tag Module
Protected Module KajuLocale
	#tag Note, Name = About
		
		Any data that needs to be localized (strings, mostly) goes here.
		
		The only exceptions are strings that might need to be compared by the developer, 
		like error messages in KajuException.
	#tag EndNote


	#tag Constant, Name = kBinaryInfoInvalidReason, Type = String, Dynamic = True, Default = \"Binary information is not valid", Scope = Protected
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Bin\xC3\xA4re Informationen sind nicht valide"
	#tag EndConstant

	#tag Constant, Name = kErrorBadUpdateData, Type = String, Dynamic = True, Default = \"The update data cannot be read.", Scope = Protected
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Update Informationen k\xC3\xB6nnen nicht gelesen werden."
	#tag EndConstant

	#tag Constant, Name = kErrorIncorrectPacketMarker, Type = String, Dynamic = True, Default = \"The update packet signature marker was incorrect.", Scope = Protected
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Die Update Paket Signatur war inkorrekt."
	#tag EndConstant

	#tag Constant, Name = kErrorIncorrectPacketSignature, Type = String, Dynamic = True, Default = \"The RSA signature of the update packet cannot be verified.", Scope = Protected
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Die RSA Signatur des Update Paket kann nicht verifiziert werden."
	#tag EndConstant

	#tag Constant, Name = kErrorNoUpdateData, Type = String, Dynamic = True, Default = \"No update data was available.", Scope = Protected
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Es standen keine Update Informationen zur Verf\xC3\xBCgung."
	#tag EndConstant

	#tag Constant, Name = kErrorOccurredMessage, Type = String, Dynamic = True, Default = \"An error has occurred. Would you like to try again now or later\?", Scope = Protected
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Es ist ein Fehler aufgetreten. M\xC3\xB6chten Sie es jetzt oder sp\xC3\xA4ter noch einmal versuchen\?"
	#tag EndConstant

	#tag Constant, Name = kLaterButton, Type = String, Dynamic = True, Default = \"Later", Scope = Protected
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Sp\xC3\xA4ter"
	#tag EndConstant

	#tag Constant, Name = kMissingAppNameReason, Type = String, Dynamic = True, Default = \"Missing app name", Scope = Protected
		#Tag Instance, Platform = Any, Language = de, Definition  = \"App Name fehlt"
	#tag EndConstant

	#tag Constant, Name = kMissingReason, Type = String, Dynamic = False, Default = \"Missing", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = kTryAgainButton, Type = String, Dynamic = True, Default = \"Try Again", Scope = Protected
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Erneut versuchen"
	#tag EndConstant

	#tag Constant, Name = kVersionMustBeInFormReason, Type = String, Dynamic = True, Default = \"Version must be in one of these forms", Scope = Protected
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Version muss in einer der folgenden Formen eingegeben werden"
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
