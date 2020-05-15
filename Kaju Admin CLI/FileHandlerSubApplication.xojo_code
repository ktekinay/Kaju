#tag Class
Protected Class FileHandlerSubApplication
Inherits SubApplication
	#tag Event
		Function Run(adminFile As FolderItem, options As OptionParser) As Integer
		  try
		    
		    dim file as new KajuFile
		    file.Load adminFile
		    
		    return RaiseEvent Run( file, adminFile, options )
		    
		  catch err as IOException
		    print "Cannot open specified file"
		    return App.kErrorGeneralError
		    
		  end try
		End Function
	#tag EndEvent


	#tag Hook, Flags = &h0
		Event Run(file As KajuFile, adminFile As FolderItem, options As OptionParser) As Integer
	#tag EndHook


	#tag ViewBehavior
		#tag ViewProperty
			Name="AdditionalHelp"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Description"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Usage"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
