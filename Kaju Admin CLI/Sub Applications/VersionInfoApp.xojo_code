#tag Class
Protected Class VersionInfoApp
Inherits VersionHandlerSubApplication
	#tag Event
		Sub AddOptions(parser As OptionParser)
		  parser.AddOption new Option( "", kOptionJSON, "Output as JSON", Option.OptionType.Boolean )
		End Sub
	#tag EndEvent

	#tag Event
		Function GetDescription() As String
		  return kDescription
		End Function
	#tag EndEvent

	#tag Event
		Function Run(version As Kaju.UpdateInformation, file As KajuFile, options As OptionParser, ByRef saveFile As Boolean) As Integer
		  #pragma unused file
		  
		  saveFile = false
		  
		  dim json as JSONItem = version.ToJSON
		  json.Compact = false
		  
		  if options.BooleanValue( kOptionJSON, Options.OptionValue( kOptionJSON ).WasSet ) then
		    
		    print json.ToString
		    
		  else
		    //
		    // Walk the JSON
		    //
		    PrintJSONObject json, ""
		    
		  end if
		  
		  return App.kErrorNoError
		End Function
	#tag EndEvent


	#tag Method, Flags = &h21
		Private Sub PrintJSONObject(json As JSONItem, prefix As String)
		  dim names() as string = json.Names
		  for each name as string in names
		    dim thisPrefix as string = prefix + name
		    dim v as variant = json.Value( name )
		    if v isa JSONItem then
		      PrintJSONObject v, thisPrefix + "."
		    elseif v.Type = Variant.TypeText or v.Type = Variant.TypeString then
		      dim s as string = v.StringValue
		      s = """" + s.ReplaceAll( """", """""" ) + """"
		      print thisPrefix + ": " + s
		    else
		      print thisPrefix + ": " + v.StringValue
		    end if
		  next
		  
		End Sub
	#tag EndMethod


	#tag Constant, Name = kDescription, Type = String, Dynamic = False, Default = \"Get all version information", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kOptionJSON, Type = String, Dynamic = False, Default = \"json", Scope = Private
	#tag EndConstant


	#tag ViewBehavior
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
	#tag EndViewBehavior
End Class
#tag EndClass
