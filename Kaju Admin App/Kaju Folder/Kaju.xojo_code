#tag Module
Protected Module Kaju
	#tag Method, Flags = &h1
		Protected Function VersionToDouble(version As String) As Double
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


	#tag Constant, Name = kUpdatePacketMarker, Type = String, Dynamic = False, Default = \"KAJU ", Scope = Private
	#tag EndConstant


End Module
#tag EndModule
