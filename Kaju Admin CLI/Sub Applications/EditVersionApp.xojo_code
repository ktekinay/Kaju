#tag Class
Protected Class EditVersionApp
Inherits VersionHandlerSubApplication
	#tag Event
		Sub AddOptions(parser As OptionParser)
		  dim o as new Option( "", kOptionSet, "Set a key=value or key=@/path/to/file", Option.OptionType.String )
		  o.IsArray = true
		  parser.AddOption o
		  
		  parser.AddOption new Option( "", kOptionEncoding, _
		  "Use encoding when reading value from file (UTF-8 or platform native if not specifed)", Option.OptionType.String )
		  
		  const kHashDescription = "Use the given file to set the binary's hash"
		  
		  parser.AddOption new Option( "", kOptionMacBinary, kHashDescription, Option.OptionType.File )
		  parser.AddOption new Option( "", kOptionWinBinary, kHashDescription, Option.OptionType.File )
		  parser.AddOption new Option( "", kOptionLinuxBinary, kHashDescription, Option.OptionType.File )
		  
		  const kRemoveDescription = "Remove the binary data"
		  
		  parser.AddOption new Option( "", kOptionRemoveMacBinary, kRemoveDescription, Option.OptionType.Boolean )
		  parser.AddOption new Option( "", kOptionRemoveWinBinary, kRemoveDescription, Option.OptionType.Boolean )
		  parser.AddOption new Option( "", kOptionRemoveLinuxBinary, kRemoveDescription, Option.OptionType.Boolean )
		  
		End Sub
	#tag EndEvent

	#tag Event
		Function GetAdditionalHelp() As String
		  return kAdditionalHelp
		End Function
	#tag EndEvent

	#tag Event
		Function GetDescription() As String
		  return kDescription
		End Function
	#tag EndEvent

	#tag Event
		Function Run(version As Kaju.UpdateInformation, file As KajuFile, options As OptionParser, ByRef saveFile As Boolean) As Integer
		  #pragma unused file
		  #pragma unused saveFile
		  
		  //
		  // Make sure there are no extras
		  // (probably means bad form)
		  //
		  if options.Extra.Ubound <> -1 then
		    print "Unrecognized options: " + join( options.Extra, ", " ) + " (did you mean to `--set'?)"
		    return App.kErrorGeneralError
		  end if
		  
		  //
		  // See if there is an encoding specified
		  //
		  dim enc as TextEncoding
		  if options.OptionValue( kOptionEncoding ).WasSet then
		    enc = GetInternetTextEncoding( options.StringValue( kOptionEncoding ) )
		  end if
		  
		  //
		  // Remove binaries
		  //
		  if options.BooleanValue( kOptionRemoveMacBinary, false ) then
		    version.MacBinary = nil
		  end if
		  if options.BooleanValue( kOptionRemoveWinBinary, false ) then
		    version.WindowsBinary = nil
		  end if
		  if options.BooleanValue( kOptionRemoveLinuxBinary, false ) then
		    version.LinuxBinary = nil
		  end if
		  
		  //
		  // Hashes
		  //
		  if options.OptionValue( kOptionMacBinary ).WasSet then
		    if version.MacBinary is nil then
		      version.MacBinary = new Kaju.BinaryInformation( false )
		    end if
		    dim binary as Kaju.BinaryInformation = version.MacBinary
		    binary.Hash = Kaju.HashOfFile( options.FileValue( kOptionMacBinary ) )
		  end if
		  if options.OptionValue( kOptionWinBinary ).WasSet then
		    if version.WindowsBinary is nil then
		      version.WindowsBinary = new Kaju.BinaryInformation( true )
		    end if
		    dim binary as Kaju.BinaryInformation = version.WindowsBinary
		    binary.Hash = Kaju.HashOfFile( options.FileValue( kOptionWinBinary ) )
		  end if
		  if options.OptionValue( kOptionLinuxBinary ).WasSet then
		    if version.LinuxBinary is nil then
		      version.LinuxBinary = new Kaju.BinaryInformation( true )
		    end if
		    dim binary as Kaju.BinaryInformation = version.LinuxBinary
		    binary.Hash = Kaju.HashOfFile( options.FileValue( kOptionLinuxBinary ) )
		  end if
		  
		  //
		  // Set
		  //
		  dim o as Option = options.OptionValue( kOptionSet )
		  if o.WasSet then
		    dim params() as variant = o.Value
		    
		    for each param as string in params
		      dim keyFound as boolean
		      
		      dim key as string = param.NthField( "=", 1 )
		      dim value as string = param.Mid( key.Len + 2 )
		      
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
		      
		      //
		      // See if the key needs massaging
		      //
		      if key.InStr( "." ) <> 0 then
		        dim leftKey as string = key.NthField( ".", 1 )
		        dim rightKey as string = key.NthField( ".", 2 )
		        
		        dim binary as Kaju.BinaryInformation
		        select case leftKey
		        case "MacBinary"
		          if version.MacBinary is nil then
		            version.MacBinary = new Kaju.BinaryInformation( false )
		          end if
		          binary = version.MacBinary
		          
		        case "WindowsBinary", "WinBinary"
		          if version.WindowsBinary is nil then
		            version.WindowsBinary = new Kaju.BinaryInformation( true )
		          end if
		          binary = version.WindowsBinary
		          
		        case "LinuxBinary", "LinBinary"
		          if version.LinuxBinary is nil then
		            version.LinuxBinary = new Kaju.BinaryInformation( true )
		          end if
		          binary = version.LinuxBinary
		          
		        end select
		        
		        if binary isa Object then
		          dim ti as Introspection.TypeInfo = Introspection.GetType( binary )
		          dim props() as Introspection.PropertyInfo = ti.GetProperties
		          for each prop as Introspection.PropertyInfo in props
		            if prop.Name = rightKey then
		              keyFound = true
		              prop.Value( binary ) = value
		              exit for prop
		            end if
		          next
		        end if
		        
		      else // Just a key
		        try
		          version.SetByName( key ) = value
		          keyFound = true
		        catch err as KeyNotFoundException
		        end try
		        
		      end if
		      
		      if not keyFound then
		        print "Unknown key: " + key
		        return App.kErrorGeneralError
		      end if
		      
		    next
		  end if
		  
		  return App.kErrorNoError
		  
		End Function
	#tag EndEvent


	#tag Method, Flags = &h21
		Private Function ValueFromFile(path As String) As String
		  //
		  // Do some simple path parsing
		  //
		  
		  dim f as FolderItem = OptionParser.GetRelativeFolderItem( path )
		  
		  dim bs as BinaryStream = BinaryStream.Open( f )
		  dim r as string = bs.Read( bs.Length )
		  bs.Close
		  
		  return r
		End Function
	#tag EndMethod


	#tag Constant, Name = kAdditionalHelp, Type = String, Dynamic = False, Default = \"Set a version field to the given value. You can use the `@\' form to read the input from a file. Relative paths can be used.\n\nExamples:\n\nChange a version number:\n  editversion --version\x3D1.0 --set version\x3D1.2\n\nSet the release notes from a file:\n  editversion --version\x3D1.2 --set ReleaseNotes\x3D@/path/to/file\n\nMultiple changes:\n  editversion --version\x3D1.0 --set version\x3D1.1\n    --set ReleaseNotes\x3D@/path/to/file\n    --set MinimumRequiredVersion\x3D1.1\n    --set RequiresPayment\x3Dtrue\n\nSet the binary hashes:\n  editversion --version\x3D1.1\n    --macbinary\x3D/path/to/mac/file\n    --winbinary\x3D/path/to/windows/file\n\nSet a binary\'s data:\n  editversion --version\x3D1.5\n    --set MacBinary.url\x3Dhttp://www.something.com\n    --set WindowsBinary.ExecutableName\x3DMyApp\n\nYou can get a list of the top-level field names through the versioninfo tool. The binary fields are:\n\n  Hash (should not be set directly)\n  URL\n  ExecutableName (required for Windows and Linux)\n\nVersion placeholder:\n\nWhen setting binary URL\'s\x2C you can use `$VERSION$\' as a placeholder to substitute the version number when exporting the Update Information file.", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kDescription, Type = String, Dynamic = False, Default = \"Edit a version", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kOptionEncoding, Type = String, Dynamic = False, Default = \"encoding", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kOptionLinuxBinary, Type = String, Dynamic = False, Default = \"linuxbinary", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kOptionMacBinary, Type = String, Dynamic = False, Default = \"macbinary", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kOptionRemoveLinuxBinary, Type = String, Dynamic = False, Default = \"remove-linuxbinary", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kOptionRemoveMacBinary, Type = String, Dynamic = False, Default = \"remove-macbinary", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kOptionRemoveWinBinary, Type = String, Dynamic = False, Default = \"remove-winbinary", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kOptionSet, Type = String, Dynamic = False, Default = \"set", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kOptionWinBinary, Type = String, Dynamic = False, Default = \"winbinary", Scope = Private
	#tag EndConstant


	#tag ViewBehavior
		#tag ViewProperty
			Name="AdditionalHelp"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
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
		#tag ViewProperty
			Name="Usage"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
