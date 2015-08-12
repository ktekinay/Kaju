#tag Class
Protected Class Option
	#tag Method, Flags = &h0
		Sub AddAllowedValue(ParamArray values() As String)
		  if AllowedValues.Ubound <> -1 then
		    raise new OptionParserException("You cannot set both allowed values and disallowed values")
		  end if
		  
		  for each v as string in values
		    AllowedValues.Append v.Trim
		  next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AddDisallowedValue(ParamArray values() As String)
		  if AllowedValues.Ubound <> -1 then
		    raise new OptionParserException("You cannot set both disallowed values and allowed values")
		  end if
		  
		  for each v as string in values
		    DisallowedValues.Append v.Trim
		  next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(shortKey As String, longKey As String, description As String, type As OptionType = OptionType.String)
		  //
		  // Construct a new `Option` for use with `OptionParser`. Provides most
		  // common attributes about an option as parameters. 
		  //
		  // ### Parameters
		  // * `shortKey` - Option's short key, can be blank
		  // * `longKey` - Option's long key, can be blank
		  // * `description` - Description of option used when display the help message
		  // * `type` - Type of this option, see `OptionType` enum
		  //
		  // ### Notes
		  //
		  // While both `shortKey` and `longKey` are optional, one must be supplied. Further,
		  // `longKey` must be more than 1 character in length.
		  //
		  // ### Example
		  //
		  // ```
		  // Dim opt As New OptionParser
		  //
		  // Dim o As Option
		  // o = New Option("", "name", "Name to say hello to")
		  // o.IsRequired = True
		  // opt.AddOption o
		  //
		  // opt.AddOption New Option("", "count", "Number of times to say hello", Option.OptionType.Integer)
		  // ```
		  //
		  
		  // Validate and cleanup
		  shortKey = shortKey.Trim
		  longKey = longKey.Trim
		  description = ReplaceLineEndings(description.Trim, EndOfLine)
		  
		  While shortKey.Left(1) = "-"
		    shortKey = shortKey.Mid(2).Trim
		  Wend
		  While longKey.Left(1) = "-"
		    longKey = longKey.Mid(2).Trim
		  Wend
		  
		  If shortKey = "" and longKey = "" Then
		    Raise New OptionParserException("Option must specify at least one key.")
		  End If
		  If shortKey.Len > 1 Then
		    Raise New OptionParserException("Short Key is optional but may only be one character: " + shortKey)
		  End If
		  If longKey.Len = 1 Then
		    Raise New OptionParserException("Long Key is optional but must be more than one character: " + longKey)
		  End If
		  
		  Self.ShortKey = shortKey
		  Self.LongKey = longKey
		  Self.Description = description
		  Self.Type = type
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub HandleValue(value As String)
		  //
		  // For internal `OptionParser` use.
		  //
		  // Handles converting the `String` representation of an option as supplied
		  // by the user to the actual `OptionType`, for example, converts a `String`
		  // to an `Integer`, `Double`, `Date`, `Boolean`, `FolderItem`, etc...
		  //
		  
		  //
		  // Check to see if the value is allowed or disallowed first
		  //
		  if AllowedValues.Ubound <> -1 and AllowedValues.IndexOf(value) = -1 then
		    raise new OptionInvalidKeyValueException("The key value is not allowed: " + value)
		  end if
		  if DisallowedValues.Ubound <> -1 and DisallowedValues.IndexOf(value) <> -1 then
		    raise new OptionInvalidKeyValueException("The key value is dissallowed: " + value)
		  end if
		  
		  Dim newValue As Variant
		  
		  Select Case Type
		  Case OptionType.Boolean
		    Select Case value
		    Case "", "y", "yes", "t", "true", "on", "1"
		      newValue = True
		      
		    Else
		      newValue = False
		    End Select
		    
		  Case OptionType.Date
		    Dim dValue As Date
		    
		    If ParseDate(value, dValue) Then
		      newValue = dValue
		    Else
		      newValue = value
		    End If
		    
		  Case OptionType.Directory
		    if value <> "" then
		      newValue = OptionParser.GetRelativeFolderItem(value)
		    end if
		    
		  Case OptionType.Double
		    newValue = Val(value)
		    
		  Case OptionType.File
		    if value <> "" then
		      newValue = OptionParser.GetRelativeFolderItem(value)
		    end if
		    
		  Case OptionType.Integer
		    newValue = Val(value)
		    
		  Case OptionType.String
		    newValue = value
		  End Select
		  
		  If Self.IsArray Then
		    If Not Self.WasSet Then
		      Self.Value = Array(newValue)
		      
		    Else
		      Dim ary() As Variant = Self.Value
		      ary.Append newValue
		      Self.Value = ary
		    End If
		    
		  Else
		    Self.Value = newValue
		  End If
		  
		  Self.WasSet = True
		End Sub
	#tag EndMethod


	#tag Note, Name = Enums
		### OptionType
		
		Represent a valid type of option.
		
		* `String`
		* `Integer` - Supplied value must be a valid number
		* `Double` - Supplied value must be a valid number
		* `Date` - Supplied value must pass `ParseDate()`
		* `Boolean` - If supplied value is `""`, `"y"`, `"yes"`, `"t"`, `"true"`, `"on"`, `"1"` then it is considered `True`, otherwise `False`
		* `File` - Represented by a `FolderItem`
		* `Directory` - Represented by a `FolderItem`
		
	#tag EndNote


	#tag Property, Flags = &h21
		Private AllowedValues() As String
	#tag EndProperty

	#tag Property, Flags = &h0
		#tag Note
			Description that will appear in the application help for this option.
		#tag EndNote
		Description As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private DisallowedValues() As String
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  dim desc() as string = Array(Description)
			  
			  if AllowedValues.Ubound <> -1 then
			    dim chunk as string = "[can be: `" + join(AllowedValues, "', `") + "']"
			    desc.Append chunk
			  end if
			  
			  if DisallowedValues.Ubound <> -1 then
			    dim chunk as string = "[may not be: `" + join(DisallowedValues, "', `") + "']"
			    desc.Append chunk
			  end if
			  
			  return join(desc, " ")
			  
			End Get
		#tag EndGetter
		HelpDescription As String
	#tag EndComputedProperty

	#tag Property, Flags = &h0
		#tag Note
			
			
			For example, say this option has `IsArray=True` and is `-i/--include`. On the command line one could:
			
			```
			$ myapp -i include -i project/include -i support/include abc.c
			```
			
			In code would look like:
			
			```
			Dim v() As Variant = optParser.ArrayValue("include")
			
			Print v(0) // include
			Print v(1) // project/include
			Print v(2) // support/include
			```
			If True, this option will handle multiple values and store those values into an array, even if one or none.
		#tag EndNote
		IsArray As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		#tag Note
			When set to `True` validation will be done on a `OptionType.File` and `OptionType.Folder`
			to ensure that it can be read from. If the validation fails a `OptionInvalidKeyValueException`
			exception will be raised.
			
			**NOTE:** This does not mean that the option is required. It simply means that if supplied, the
			option needs to be readable. If you want to make sure that the option is both readable and
			required, one should also set `IsRequired=True`.
		#tag EndNote
		IsReadableRequired As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		#tag Note
			If set to `True`, this option will be required to be supplied at the command line. If it is not
			supplied, a `OptionMissingKeyException` will be raised.
		#tag EndNote
		IsRequired As Boolean
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Note
			Read-only property that one can check to ensure if the Option value is valid
			or not.
		#tag EndNote
		#tag Getter
			Get
			  If IsRequired And Not WasSet Then
			    Return False
			  End If
			  
			  If IsRequired Or WasSet Then
			    Select Case Type
			    Case OptionType.Date
			      If IsValidDateRequired Then
			        Dim d As Date = Value
			        
			        If d Is Nil Then
			          Return False
			        End If
			      End If
			      
			    Case OptionType.Directory, OptionType.File
			      Dim fi As FolderItem = Value
			      
			      If IsRequired Or WasSet Then
			        If IsReadableRequired And (fi Is Nil Or fi.IsReadable = False) Then
			          Return False
			        End If
			        
			        If IsWriteableRequired And (fi Is Nil Or fi.IsWriteable = False) Then
			          Return False
			        End If
			      End If
			      
			    Case OptionType.Double, OptionType.Integer
			      Dim d As Double = Value
			      
			      If MinimumNumber <> kNumberNotSet And d < MinimumNumber Then
			        Return False
			      End If
			      
			      If MaximumNumber <> kNumberNotSet And d > MaximumNumber Then
			        Return False
			      End If
			    End Select
			  End If
			  
			  Return True
			End Get
		#tag EndGetter
		IsValid As Boolean
	#tag EndComputedProperty

	#tag Property, Flags = &h0
		#tag Note
			When set to `True` validation is performed on the supplied value to make sure it is a valid
			date. If the validation fails a `OptionInvalidKeyValueException` exception will be raised.
			
			**NOTE:** This does not mean that the option is required. It simply means that if supplied, the
			option needs to be a valid date. If you want to make sure that the option is both a readable 
			date and required, one should also set `IsRequired=True`.
		#tag EndNote
		IsValidDateRequired As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		#tag Note
			When set to `True` validation will be done on a `OptionType.File` and `OptionType.Folder`
			to ensure that it can be written to. If the validation fails a `OptionInvalidKeyValueException`
			exception will be raised.
			
			**NOTE:** This does not mean that the option is required. It simply means that if supplied, the
			option needs to be writeable. If you want to make sure that the option is both writeable and
			required, one should also set `IsRequired=True`.
		#tag EndNote
		IsWriteableRequired As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		#tag Note
			An option can have a short and long key. This is the long key. A key is what the user
			supplies on the command line to supply a particular value to a given option.
			
			For example, suppose you are writing a Hello World program and wish to accept a name
			on the command line of who to say hello to. The long option name be "name" while the
			short "n".
			
			```
			$ say-hello -n John
			Hello John!
			$ say-hello --name=John
			Hello John!
			```
		#tag EndNote
		LongKey As String
	#tag EndProperty

	#tag Property, Flags = &h0
		#tag Note
			Set a maximum limit to an `Integer` or `Double` option type.
			
			**NOTE:** This does not mean that the option is required. It simply means that if supplied, the
			option needs to be no more than this. If you want to make sure that the option has a maximum value
			and is required, one should also set `IsRequired=True`.
		#tag EndNote
		MaximumNumber As Double = kNumberNotSet
	#tag EndProperty

	#tag Property, Flags = &h0
		#tag Note
			Set a minimum limit to an `Integer` or `Double` option type.
			
			**NOTE:** This does not mean that the option is required. It simply means that if supplied, the
			option needs to be no less than this. If you want to make sure that the option has a minimum value
			and is required, one should also set `IsRequired=True`.
		#tag EndNote
		MinimumNumber As Double = kNumberNotSet
	#tag EndProperty

	#tag Property, Flags = &h0
		#tag Note
			An option can have a short and long key. This is the short key. A key is what the user
			supplies on the command line to supply a particular value to a given option.
			
			For example, suppose you are writing a Hello World program and wish to accept a name
			on the command line of who to say hello to. The long option name be "name" while the
			short "n".
			
			```
			$ say-hello -n John
			Hello John!
			$ say-hello --name=John
			Hello John!
			```
		#tag EndNote
		ShortKey As String
	#tag EndProperty

	#tag Property, Flags = &h0
		#tag Note
			Get or Set what type of option this is.
			
			Please see the `OptionType` enum for more information.
		#tag EndNote
		Type As OptionType
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Note
			Retrieve a `String` representation of the enum `OptionType` associated with this option.
		#tag EndNote
		#tag Getter
			Get
			  Select Case Type
			  Case OptionType.Boolean
			    Return "BOOL"
			    
			  Case OptionType.Date
			    Return "DATE"
			    
			  Case OptionType.Directory
			    Return "DIR"
			    
			  Case OptionType.Double
			    Return "DOUBLE"
			    
			  Case OptionType.File
			    Return "FILE"
			    
			  Case OptionType.Integer
			    Return "INTEGER"
			    
			  Case OptionType.String
			    Return "STR"
			  End Select
			End Get
		#tag EndGetter
		TypeString As String
	#tag EndComputedProperty

	#tag Property, Flags = &h0
		#tag Note
			Get or set the user supplied value of this option.
		#tag EndNote
		Value As Variant
	#tag EndProperty

	#tag Property, Flags = &h0
		#tag Note
			If the option was supplied on the command line, `WasSet` will return True. Otherwise
			it will return `False`. This can be used to determine if a default value should be
			used or maybe further user prompting.
		#tag EndNote
		WasSet As Boolean
	#tag EndProperty


	#tag Constant, Name = kNone, Type = String, Dynamic = False, Default = \"", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kNumberNotSet, Type = Double, Dynamic = False, Default = \"-32768", Scope = Private
	#tag EndConstant


	#tag Enum, Name = OptionType, Type = Integer, Flags = &h0
		String
		  Integer
		  Double
		  Date
		  Boolean
		  File
		Directory
	#tag EndEnum


	#tag ViewBehavior
		#tag ViewProperty
			Name="Description"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HelpDescription"
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
			Name="IsArray"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IsReadableRequired"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IsRequired"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IsValid"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IsValidDateRequired"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IsWriteableRequired"
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
			Name="LongKey"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MaximumNumber"
			Group="Behavior"
			InitialValue="kNumberNotSet"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MinimumNumber"
			Group="Behavior"
			InitialValue="kNumberNotSet"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ShortKey"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
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
			Name="Type"
			Group="Behavior"
			Type="OptionType"
			EditorType="Enum"
			#tag EnumValues
				"0 - String"
				"1 - Integer"
				"2 - Double"
				"3 - Date"
				"4 - Boolean"
				"5 - File"
				"6 - Directory"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="TypeString"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="WasSet"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
