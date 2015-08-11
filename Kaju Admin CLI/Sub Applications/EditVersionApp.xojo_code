#tag Class
Protected Class EditVersionApp
Inherits VersionHandlerSubApplication
	#tag Event
		Sub AddOptions(parser As OptionParser)
		  dim o as new Option( "", kOptionSet, "Set a key=value or key=@/path/to/file", Option.OptionType.String )
		  o.IsRequired = true
		  o.IsArray = true
		  parser.AddOption o 
		  
		  parser.AddOption new Option( "", kOptionEncoding, _
		  "Use encoding when reading value from file (UTF-8 or platform native if not specifed)", Option.OptionType.String )
		  
		End Sub
	#tag EndEvent

	#tag Event
		Function GetDescription() As String
		  return kDescription
		End Function
	#tag EndEvent

	#tag Event
		Function Run(version As Kaju.UpdateInformation, file As KajuFile, options As OptionParser, ByRef saveFile As Boolean) As Integer
		  #pragma unused saveFile
		  
		  //
		  // See if there is an encoding specified
		  //
		  dim enc as TextEncoding
		  if options.OptionValue( kOptionEncoding ).WasSet then
		    enc = GetInternetTextEncoding( options.StringValue( kOptionEncoding ) )
		  end if
		  
		  dim o as Option = options.OptionValue( kOptionSet )
		  dim params() as variant = o.Value
		  
		  for each param as string in params
		    dim key as string = param.NthField( "=", 1 )
		    dim value as string = param.Mid( key.Len + 2 )
		    
		    //
		    // Special handling for the binaries
		    //
		    
		    //
		    // See if the value actually points to a file
		    //
		    if value.Left( 1 ) = "@" then
		      value = ValueFromFile( value.Mid( 2 ) )
		      if enc isa TextEncoding then
		        value = value.DefineEncoding( enc )
		      elseif Encodings.UTF8.IsValidData( value ) then
		        value = value.DefineEncoding( Encodings.UTF8 )
		      elseif TargetMacOS then
		        value = value.DefineEncoding( Encodings.MacRoman )
		      else
		        value = value.DefineEncoding( Encodings.ISOLatin1 )
		      end if
		    end if
		    
		  next
		  
		  return App.kErrorNoError
		End Function
	#tag EndEvent


	#tag Method, Flags = &h21
		Private Function ValueFromFile(path As String) As String
		  #if not TargetWin32 then
		    //
		    // Do some simple path parsing
		    //
		    path = path.Trim
		    
		    if path.Left( 2 ) = "~/" then
		      path = SpecialFolder.UserHome.NativePath + path.Mid( 2 )
		    end if
		    
		    if path.Left( 1 ) <> "/" then
		      path = SpecialFolder.CurrentWorkingDirectory.NativePath + "/" + path
		    end if
		    
		    dim pathParts() as string = path.Split( "/" )
		    dim newParts() as string
		    for i as integer = 0 to pathParts.Ubound
		      dim part as string = pathParts( i )
		      if part = ".." then
		        newParts.Remove newParts.Ubound
		      elseif part = "." then
		        //
		        // Do nothing
		        //
		      else
		        newParts.Append part
		      end if
		    next
		    
		    path = join( newParts, "/" )
		  #endif
		  
		  dim f as new FolderItem( path, FolderItem.PathTypeShell )
		  dim bs as BinaryStream = BinaryStream.Open( f )
		  dim r as string = bs.Read( bs.Length )
		  bs.Close
		  
		  return r
		End Function
	#tag EndMethod


	#tag Constant, Name = kDescription, Type = String, Dynamic = False, Default = \"Edit a version", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kOptionEncoding, Type = String, Dynamic = False, Default = \"encoding", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kOptionSet, Type = String, Dynamic = False, Default = \"set", Scope = Private
	#tag EndConstant


End Class
#tag EndClass
