#tag Class
Protected Class Information
	#tag Method, Flags = &h21
		Private Sub Constructor()
		  // Do not allow direct instantiation
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(copyFrom As Kaju.Information)
		  dim tiMine as Introspection.TypeInfo = Introspection.GetType( self )
		  dim tiFrom as Introspection.TypeInfo = Introspection.GetType( copyFrom )
		  
		  if tiMine.FullName <> tiFrom.FullName then
		    raise new KajuException( "Must clone from like types", CurrentMethodName )
		  end if
		  
		  dim props() as Introspection.PropertyInfo = tiMine.GetProperties
		  
		  dim doComputed as boolean = false
		  
		  do
		    
		    doComputed = not doComputed // First pass will do computed properties
		    
		    for each prop as Introspection.PropertyInfo in props
		      
		      #if DebugBuild
		        //
		        // Debugging
		        //
		        dim propName as string = prop.Name
		        #pragma unused propName
		        dim propType as string = prop.PropertyType.Name
		        #pragma unused propType
		      #endif
		      
		      if prop.IsComputed <> doComputed then
		        continue for prop
		      end if
		      
		      if not prop.CanRead or not prop.CanWrite or prop.IsShared then
		        continue for prop
		      end if
		      
		      dim value as variant = prop.Value( copyFrom )
		      
		      select case value
		      case isa Kaju.Information
		        dim tiInfo as Introspection.TypeInfo = Introspection.GetType( value )
		        dim contructors() as Introspection.ConstructorInfo = tiInfo.GetConstructors
		        dim useConstructor as Introspection.ConstructorInfo
		        for each c as Introspection.ConstructorInfo in contructors
		          dim params() as Introspection.ParameterInfo = c.GetParameters
		          if c.IsPublic and params.Ubound = 0 and params( 0 ).ParameterType.FullName = "Kaju.Information" then
		            useConstructor = c
		            exit for c
		          end if
		        next
		        
		        if useConstructor is nil then
		          raise new KajuException( "Can't find constructor for property " + prop.Name, CurrentMethodName )
		        end if
		        
		        dim constructorParams() as variant
		        constructorParams.Append value
		        
		        dim newValue as variant = useConstructor.Invoke( constructorParams )
		        prop.Value( self ) = Kaju.Information( newValue )
		        
		      case isa Picture
		        dim p as Picture = value
		        dim newP as new Picture( p.Width, p.Height )
		        newP.Graphics.DrawPicture p, 0, 0
		        
		        prop.Value( self ) = newP
		        
		      case nil
		        prop.Value( self ) = nil
		        
		      case else
		        if value.Type = Variant.TypeObject or value.Type = Variant.TypeArray then
		          raise new KajuException( "Can't clone property " + prop.Name, CurrentMethodName )
		        end if
		        
		        prop.Value( self ) = value
		        
		      end select
		      
		    next
		    
		  loop until not doComputed
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function InvalidReason() As String
		  return mInvalidReason
		  
		End Function
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


	#tag Hook, Flags = &h0
		Event IsInvalid(ByRef reason As String) As Boolean
	#tag EndHook


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  dim reason as string
			  dim r as boolean = not RaiseEvent IsInvalid( reason )
			  mInvalidReason = reason
			  
			  return r
			End Get
		#tag EndGetter
		IsValid As Boolean
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private mInvalidReason As String
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
			Name="IsValid"
			Group="Behavior"
			Type="Boolean"
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
