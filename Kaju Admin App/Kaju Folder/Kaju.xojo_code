#tag Module
Protected Module Kaju
	#tag Method, Flags = &h1
		Protected Function AppVersionString() As String
		  // Convenience method to return the app's version as a string
		  
		  return VersionStringFor( App.MajorVersion, App.MinorVersion, App.BugVersion, App.StageCode, App.NonReleaseVersion )
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub CancelUpdate()
		  if InitiateOnQuit <> nil then
		    InitiateOnQuit.ReplacementApp = nil // Will stop the update
		    InitiateOnQuit = nil
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function GetTemporaryFolder() As FolderItem
		  dim f as FolderItem = GetTemporaryFolderItem
		  f.Delete
		  f.CreateAsFolder
		  return f
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function HashOfFile(f As FolderItem) As String
		  if f is nil or not f.IsReadable then
		    return ""
		  end if
		  
		  dim bs as BinaryStream = BinaryStream.Open( f )
		  
		  const kBlock = 1000000
		  
		  dim hasher as new MD5Digest
		  
		  while not bs.EOF
		    dim chunk as string = bs.Read( kBlock )
		    hasher.Process( chunk )
		  wend
		  
		  return EncodeHex( hasher.Value )
		  
		  Exception err as RuntimeException
		    return ""
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub JSONToProperties(data As JSONItem, target As Object)
		  // Stores the values in the JSON object to the matching property in the object.
		  // Will only handle basic types, not objects.
		  
		  dim ti as Introspection.TypeInfo = Introspection.GetType( target )
		  dim props() as Introspection.PropertyInfo = ti.GetProperties()
		  
		  for each prop as Introspection.PropertyInfo in props
		    if prop.CanWrite then
		      dim name as string = prop.Name
		      if data.HasName( name ) then
		        dim v as variant = data.Value( name )
		        if not ( v IsA JSONItem ) then
		          prop.Value( target ) = v
		        end if
		      end if
		    end if
		  next
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub StartUpdate(initiater As Kaju.UpdateInitiater)
		  InitiateOnQuit = initiater
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function UpdateInProgress() As Boolean
		  return mUpdateInProgress
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function VersionStringFor(majorVersion As Integer, minorVersion As Integer, bugVersion As Integer) As String
		  return VersionStringFor( majorVersion, minorVersion, bugVersion, App.Final, 0 )
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function VersionStringFor(majorVersion As Integer, minorVersion As Integer, bugVersion As Integer, stageCode As Integer, nonReleaseVersion As Integer) As String
		  dim parts() as string
		  parts.Append str( majorVersion )
		  parts.Append str( minorVersion )
		  parts.Append str( bugVersion )
		  
		  dim version as string = join( parts, "." )
		  
		  if stageCode <> App.Final then
		    select case stageCode
		    case App.Development
		      version = version + "d"
		    case App.Alpha
		      version = version + "a"
		    case App.Beta
		      version = version + "b"
		    end
		    version = version + str( nonReleaseVersion )
		  end if
		  
		  return version
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function VersionToDouble(version As String) As Double
		  // Takes a version and turns it into an double that can be compared.
		  // Assumes that the version will have no more than 3 parts
		  // (NN.NN.NN) and each part will max out at 999. The version
		  // may trail with a development, alpha, or beta suffix, and that
		  // part will max out at 999.
		  //
		  // Examples:
		  //  1.2
		  //  1.1.1
		  //  1.2b4
		  //  1.3a16
		  //  1.3d343
		  //  1.99.9a101
		  
		  if version = "" then
		    return 0.0
		  end if
		  
		  static rx as RegEx
		  if rx is nil then
		    rx = new RegEx
		    rx.SearchPattern = "(?mi-Us)^([\d.]+)(?:([dab])(\d+))?$"
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
		  redim parts( 2 )
		  
		  dim r as double
		  for i as integer = 0 to parts.Ubound
		    dim thisPart as string = parts( i )
		    dim thisPartVal as double = thisPart.Val
		    r = ( r * 1000.0 ) + thisPartVal
		  next
		  
		  const kDivider = 10000.0
		  select case nonReleaseType
		  case "d"
		    r = r + ( nonRelease.Val / kDivider )
		  case "a"
		    r = r + 0.1 + ( nonRelease.Val / kDivider )
		  case "b"
		    r = r + 0.2 + ( nonRelease.Val / kDivider )
		  else // Release
		    r = r + 0.4999
		  end
		  
		  return r
		  
		End Function
	#tag EndMethod


	#tag Property, Flags = &h21
		Private InitiateOnQuit As Kaju.UpdateInitiater
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mUpdateInProgress As Boolean
	#tag EndProperty


	#tag Constant, Name = kUpdatePacketMarker, Type = String, Dynamic = False, Default = \"KAJU ", Scope = Private
	#tag EndConstant


End Module
#tag EndModule
