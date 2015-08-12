#tag Class
Protected Class SubApplication
	#tag Method, Flags = &h0
		Sub AddOptions(parser As OptionParser)
		  RaiseEvent AddOptions( parser )
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Execute(adminFile As FolderItem, options As OptionParser) As Integer
		  return RaiseEvent Run( adminFile, options )
		End Function
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event AddOptions(parser As OptionParser)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event GetAdditionalHelp() As String
	#tag EndHook

	#tag Hook, Flags = &h0
		Event GetDescription() As String
	#tag EndHook

	#tag Hook, Flags = &h0
		Event GetUsage() As String
	#tag EndHook

	#tag Hook, Flags = &h0
		Event Run(adminFile As FolderItem, options As OptionParser) As Integer
	#tag EndHook


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return RaiseEvent GetAdditionalHelp
			End Get
		#tag EndGetter
		AdditionalHelp As String
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return RaiseEvent GetDescription
			End Get
		#tag EndGetter
		Description As String
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return RaiseEvent GetUsage
			End Get
		#tag EndGetter
		Usage As String
	#tag EndComputedProperty


	#tag ViewBehavior
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
	#tag EndViewBehavior
End Class
#tag EndClass
