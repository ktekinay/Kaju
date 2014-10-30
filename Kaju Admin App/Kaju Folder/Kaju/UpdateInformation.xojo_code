#tag Class
Protected Class UpdateInformation
	#tag Method, Flags = &h0
		Sub Constructor(data As JSONItem)
		  Kaju.JSONToPoperties( data, self )
		  
		  if data.HasName( "MacBinary" ) then
		    MacBinary = new Kaju.BinaryInformation( data.Value( "MacBinary" ) )
		  end if
		  
		  if data.HasName( "WindowsBinary" ) then
		    WindowsBinary = new Kaju.BinaryInformation( data.Value( "WindowsBinary" ) )
		  end if
		  
		  if data.HasName( "LinuxBinary" ) then
		    LinuxBinary = new Kaju.BinaryInformation( data.Value( "LinuxBinary" ) )
		  end if
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		AppName As String
	#tag EndProperty

	#tag Property, Flags = &h0
		DisplayNotes As String
	#tag EndProperty

	#tag Property, Flags = &h0
		InfoURL As String
	#tag EndProperty

	#tag Property, Flags = &h0
		IsRelease As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		IsRequired As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		LinuxBinary As Kaju.BinaryInformation
	#tag EndProperty

	#tag Property, Flags = &h0
		MacBinary As Kaju.BinaryInformation
	#tag EndProperty

	#tag Property, Flags = &h0
		RequiresPayment As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		Version As String
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return Kaju.VersionToDouble( Version )
			End Get
		#tag EndGetter
		VersionAsDouble As Double
	#tag EndComputedProperty

	#tag Property, Flags = &h0
		WindowsBinary As Kaju.BinaryInformation
	#tag EndProperty


End Class
#tag EndClass
