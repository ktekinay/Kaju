#tag Class
Protected Class Information
	#tag Method, Flags = &h21
		Private Sub Constructor()
		  // Do not allow direct instantiation
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ToJSON() As JSONItem
		  dim ti as Introspection.TypeInfo = Introspection.GetType( self )
		  dim props() as Introspection.PropertyInfo = ti.GetProperties
		  
		  dim j as new JSONItem( "{}" )
		  
		  for each prop as Introspection.PropertyInfo in props
		    if prop.CanRead and prop.CanWrite and prop.IsPublic then
		      dim value as Variant = prop.Value( self )
		      if value.IsNull then
		        //
		        // Skip it
		        //
		        
		      elseif value.Type = Variant.TypeObject then
		        
		        if value IsA Kaju.Information then
		          dim child as Kaju.Information = value
		          j.Value( prop.Name ) = child.ToJSON
		        end if
		        
		      else
		        
		        j.Value( prop.Name ) = value
		        
		      end if
		    end if
		  next
		  
		  return j
		  
		End Function
	#tag EndMethod


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
