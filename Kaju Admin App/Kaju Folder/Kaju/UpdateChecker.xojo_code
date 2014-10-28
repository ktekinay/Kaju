#tag Class
Protected Class UpdateChecker
	#tag Method, Flags = &h0
		Sub Check()
		  
		End Sub
	#tag EndMethod

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

	#tag Method, Flags = &h0
		 Shared Function VersionToDouble(version As String) As Double
		  // Takes a version and turns it into an double that can be compared.
		  // Assumes that the version will have no more than 5 parts 
		  // (NN.NN.NN.NN.NN) and each part will max out at 99. The version
		  // may trail with an alpha or beta suffix, and that part will max out
		  // at 999.
		  //
		  // Examples:
		  //  1.2
		  //  1.1.1.3
		  //  1.2b4
		  //  1.3a16
		  //  1.99.9.83.12a101
		  
		  if version = "" then
		    return 0.0
		  end if
		  
		  static rx as RegEx
		  if rx is nil then
		    rx = new RegEx
		    rx.SearchPattern = "(?mi-Us)^([\d.]+)(?:([ab])(\d+))?$"
		  end if
		  
		  dim match as RegExMatch = rx.Search( version )
		  if match is nil then // Something is wrong
		    raise new KajuException( "Version is not properly formatted: " + version )
		  end if
		  
		  version = match.SubExpressionString( 1 ) // Everything except the non-release data
		  
		  dim nonReleaseType as string
		  dim nonRelease as string
		  if match.SubExpressionCount > 2 then
		    nonReleaseType = match.SubExpressionString( 2 )
		    nonRelease = match.SubExpressionString( 3 )
		  end if
		  
		  //
		  // Do the conversion
		  //
		  
		  dim parts() as string = version.Split( "." )
		  redim parts( 4 )
		  
		  dim r as double
		  for i as integer = 0 to parts.Ubound
		    dim thisPart as string = parts( i )
		    dim thisPartVal as double = thisPart.Val
		    r = ( r * 100.0 ) + thisPartVal
		  next
		  
		  select case nonReleaseType
		  case "a"
		    r = r + 0.1 + ( nonRelease.Val / 10000.0 )
		  case "b"
		    r = r + 0.2 + ( nonRelease.Val / 10000.0 )
		  else // Release
		    r = r + 0.499999
		  end
		  
		  return r
		  
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
