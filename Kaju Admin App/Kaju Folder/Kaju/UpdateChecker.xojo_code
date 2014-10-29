#tag Class
Protected Class UpdateChecker
	#tag Method, Flags = &h0
		Sub Constructor(updateURL As String, rsaPublicKey As String, preferencesFolder As FolderItem)
		  
		  self.UpdateURL = updateURL
		  self.ServerPublicKey = rsaPublicKey
		  self.PrefFile = preferencesFolder.Child( kPreferencesName )
		  
		  LoadPrefs()
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub Destructor()
		  SavePrefs()
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function JSONToStringArray(data As JSONItem) As String()
		  dim ub as integer = data.Count - 1
		  dim arr() as string
		  redim arr( ub )
		  
		  for i as integer = 0 to ub
		    arr( i ) = data( i )
		  next
		  
		  return arr
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub LoadPrefs()
		  // Load the preferences from the known file
		  //
		  // Preferences are a JSON file
		  
		  if not PrefFile.Exists then
		    //
		    // Nothing to load
		    //
		    return
		  end if
		  
		  dim tis as TextInputStream = TextInputStream.Open( PrefFile )
		  dim raw as string = tis.ReadAll( Encodings.UTF8 )
		  
		  dim j as new JSONItem( raw )
		  
		  //
		  // Load the individual variables here
		  //
		  
		  dim ti as Introspection.TypeInfo = Introspection.GetType( self )
		  dim props() as Introspection.PropertyInfo = ti.GetProperties
		  for each prop as Introspection.PropertyInfo in props
		    dim thisName as string = prop.Name
		    if StrComp( thisName.Right( 4 ), "Pref", 0 ) <> 0 or not j.HasName( prop.Name ) then
		      continue for prop
		    end if
		    
		    if prop.PropertyType.Name = "String()" then
		      prop.Value( self ) = JSONToStringArray( j.Value( thisName ) )
		    else
		      prop.Value( self ) = j.Value( thisName )
		    end if
		  next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PerformCheck(honorIgnored As Boolean)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub SavePrefs()
		  dim j as new JSONItem
		  
		  //
		  // Save the individual prefs here.
		  // Properties that end with "Pref" will be saved
		  //
		  
		  dim ti as Introspection.TypeInfo = Introspection.GetType( self )
		  dim props() as Introspection.PropertyInfo = ti.GetProperties
		  for each prop as Introspection.PropertyInfo in props
		    if StrComp( prop.Name.Right( 4 ), "Pref", 0 ) = 0 then
		      if prop.PropertyType.Name = "String()" then
		        j.Value( prop.Name ) = StringArrayToJSON( prop.Value( self ) )
		      else
		        j.Value( prop.Name ) = prop.Value( self )
		      end if
		    end if
		  next
		  
		  //
		  // Save the file
		  //
		  
		  j.Compact = false
		  dim raw as string = j.ToString
		  
		  dim tos as TextOutputStream = TextOutputStream.Create( PrefFile )
		  tos.Write raw
		  tos = nil
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function StringArrayToJSON(arr() As String) As JSONItem
		  dim j as new JSONItem
		  for i as integer = 0 to arr.Ubound
		    j.Append arr( i )
		  next
		  
		  return j
		End Function
	#tag EndMethod


	#tag Property, Flags = &h21
		Private IgnoreVersionsPref() As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private PrefFile As FolderItem
	#tag EndProperty

	#tag Property, Flags = &h21
		Private ServerPublicKey As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private UpdateURL As String
	#tag EndProperty


	#tag Constant, Name = kPreferencesName, Type = String, Dynamic = False, Default = \"Kaju_Preferences", Scope = Private
	#tag EndConstant


End Class
#tag EndClass
