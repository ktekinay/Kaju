#tag Class
Protected Class ListVersionsApp
Inherits FileHandlerSubApplication
	#tag Event
		Sub AddOptions(parser As OptionParser)
		  dim o as new Option( "", kOptionEOL, _
		  "The EOL separator", Option.OptionType.String )
		  o.AddAllowedValue "cr", "lf", "crlf", "null"
		  
		  parser.AddOption o
		  
		  o = new Option( "", kOptionInclude, "Include versions matching this regex pattern (can use more than one)", Option.OptionType.String )
		  o.IsArray = true
		  parser.AddOption o
		  
		  o = new Option( "", kOptionExclude, "Exclude versions matching this regex pattern (can use more than one)", Option.OptionType.String )
		  o.IsArray = true
		  parser.AddOption o
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
		Function Run(file As KajuFile, adminFile As FolderItem, options As OptionParser) As Integer
		  #pragma unused adminFile
		  
		  dim includeOption as Option = options.OptionValue( kOptionInclude )
		  dim excludeOption as Option = options.OptionValue( kOptionExclude )
		  
		  dim emptyArray() as variant
		  
		  dim includers() as variant = if( includeOption.Value.IsNull, emptyArray, options.OptionValue( kOptionInclude ).Value )
		  dim excluders() as variant = if( excludeOption.Value.IsNull, emptyArray, options.OptionValue( kOptionExclude ).Value )
		  
		  dim rxInclude as RegEx
		  if includers.Ubound <> -1 then
		    dim patterns() as string
		    for each pattern as string in includers
		      patterns.Append pattern
		    next
		    
		    rxInclude = new RegEx
		    rxInclude.SearchPattern = "(?:" + join( patterns, ") | (?:" ) + ")"
		  end if
		  
		  dim rxExclude as RegEx
		  if excluders.Ubound <> -1 then
		    dim patterns() as string
		    for each pattern as string in excluders
		      patterns.Append pattern
		    next
		    
		    rxExclude = new RegEx
		    rxExclude.SearchPattern = "(?:" + join( patterns, ") | (?:" ) + ")"
		  end if
		  
		  dim versions() as string
		  for i as integer = 0 to file.KajuData.Ubound
		    dim data as Kaju.UpdateInformation = file.KajuData( i )
		    dim version as string = data.Version
		    
		    select case true
		    case rxInclude isa RegEx and rxInclude.Search( version ) is nil
		      // Skip it
		    case rxExclude isa RegEx and rxExclude.Search( version ) isa RegExMatch
		      // Skip it
		      
		    case else
		      versions.Append version
		    end select
		  next
		  
		  dim eol as string = options.StringValue( kOptionEOL, "" )
		  select case eol
		  case "cr"
		    eol = &u0D
		  case "lf"
		    eol = &u0A
		  case "crlf"
		    eol = &u0D + &u0A
		  case "null"
		    eol = &u00
		  case else
		    eol = EndOfLine
		  end select
		  
		  print join( versions, eol )
		  return App.kErrorNoError
		End Function
	#tag EndEvent


	#tag Constant, Name = kAdditionalHelp, Type = String, Dynamic = False, Default = \"Lists all the versions in the given admin file. The list will be separated by the given EOL or by the platform\'s default end-of-line character.", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kDescription, Type = String, Dynamic = False, Default = \"List the versions in the file", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kOptionEOL, Type = String, Dynamic = False, Default = \"eol", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kOptionExclude, Type = String, Dynamic = False, Default = \"exclude", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kOptionInclude, Type = String, Dynamic = False, Default = \"include", Scope = Private
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
