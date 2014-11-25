#tag Class
Protected Class FolderItemAlias
	#tag Method, Flags = &h0
		Sub Constructor(f As FolderItem)
		  zSaveInfo = f.GetSaveInfo( nil )
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Operator_Convert() As FolderItem
		  return me.Resolve
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Operator_Convert(f As FolderItem)
		  if f IsA FolderItem then me.Constructor( f )
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function OriginalExists() As Boolean
		  dim f as FolderItem = me.Resolve
		  if f is nil then
		    return false
		  else
		    return f.Exists
		  end if
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Resolve() As FolderItem
		  if zSaveInfo.LenB = 0 then
		    return nil
		  else
		    dim f as new FolderItem( zSaveInfo )
		    return f
		  end if
		  
		End Function
	#tag EndMethod


	#tag Note, Name = Legal
		This class was created by Kem Tekinay, MacTechnologies Consulting (ktekinay@mactechnologies.com).
		It is copyright ©2012, all rights reserved.
		
		You may use this class AS IS at your own risk for any purpose. The author does not warrant its use
		for any particular purpose and disavows any responsibility for bad design, poor execution,
		or any other faults.
		
		The author does not actively support this class, although comments and recommendations
		are welcome.
		
		You may modify code in this class as long as those modifications are clearly indicated
		via comments in the source code.
		
		You may distribute this class, modified or unmodified, as long as any modifications
		are clearly indicated, as noted above, and this copyright notice is not disturbed or removed.
		
		If you do make useful modifications, please let me know so I can include them in
		future versions.
	#tag EndNote


	#tag Property, Flags = &h21
		Private zSaveInfo As String
	#tag EndProperty


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
