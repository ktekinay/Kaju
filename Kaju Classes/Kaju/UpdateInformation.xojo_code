#tag Class
Protected Class UpdateInformation
Inherits Kaju.Information
	#tag Method, Flags = &h1000
		Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(data As JSONItem)
		  Kaju.JSONToProperties( data, self )
		  
		  if data.HasName( kMacBinaryName ) then
		    MacBinary = new Kaju.BinaryInformation( data.Value( kMacBinaryName ) )
		  end if
		  
		  if data.HasName( kWindowsBinaryName ) then
		    WindowsBinary = new Kaju.BinaryInformation( data.Value( kWindowsBinaryName ) )
		  end if
		  
		  if data.HasName( kLinuxBinaryName ) then
		    LinuxBinary = new Kaju.BinaryInformation( data.Value( kLinuxBinaryName ) )
		  end if
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		AppName As String
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  if mImage <> nil then
			    return mImage
			  end if
			  
			  dim url as string = ImageURL.Trim
			  
			  if url = "" then
			    return nil
			  end if
			  
			  //
			  // Get the image
			  //
			  
			  dim http as new HTTPSecureSocket
			  http.Secure = url.Left( 5 ) = "https"
			  
			  dim data as string = http.Get( url, 2 )
			  
			  if data = "" then
			    return nil
			  end if
			  
			  mImage = Picture.FromData( data )
			  
			  Exception err as RuntimeException
			    mImage = nil
			    
			  Finally
			    return mImage
			    
			End Get
		#tag EndGetter
		Image As Picture
	#tag EndComputedProperty

	#tag Property, Flags = &h0
		ImageURL As String
	#tag EndProperty

	#tag Property, Flags = &h0
		LinuxBinary As Kaju.BinaryInformation
	#tag EndProperty

	#tag Property, Flags = &h0
		MacBinary As Kaju.BinaryInformation
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mImage As Picture
	#tag EndProperty

	#tag Property, Flags = &h0
		MinimumRequiredVersion As String
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  dim binaryInfo as Kaju.BinaryInformation
			  
			  #if TargetMacOS then
			    binaryInfo = MacBinary
			  #elseif TargetWin32 then
			    binaryInfo = WindowsBinary
			  #else // Linux
			    binaryInfo = LinuxBinary
			  #endif
			  
			  return binaryInfo
			End Get
		#tag EndGetter
		PlatformBinary As Kaju.BinaryInformation
	#tag EndComputedProperty

	#tag Property, Flags = &h0
		ReleaseNotes As String
	#tag EndProperty

	#tag Property, Flags = &h0
		RequiresPayment As Boolean
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static rx as RegEx
			  if rx is nil then
			    rx = new RegEx
			    rx.SearchPattern = "[dab]"
			  end if
			  
			  dim match as RegExMatch = rx.Search( Version )
			  if match is nil then
			    
			    return App.Final
			    
			  else
			    
			    select case match.SubExpressionString( 0 )
			    case "d"
			      return App.Development
			    case "a"
			      return App.Alpha
			    case "b"
			      return App.Beta
			    end
			    
			  end if
			End Get
		#tag EndGetter
		StageCode As Integer
	#tag EndComputedProperty

	#tag Property, Flags = &h0
		UseTransparency As Boolean = True
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


	#tag Constant, Name = kLinuxBinaryName, Type = String, Dynamic = False, Default = \"LinuxBinary", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kMacBinaryName, Type = String, Dynamic = False, Default = \"MacBinary", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kWindowsBinaryName, Type = String, Dynamic = False, Default = \"WindowsBinary", Scope = Public
	#tag EndConstant


	#tag ViewBehavior
		#tag ViewProperty
			Name="AppName"
			Group="Behavior"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Image"
			Group="Behavior"
			Type="Picture"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ImageURL"
			Group="Behavior"
			Type="String"
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
			Name="MinimumRequiredVersion"
			Group="Behavior"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ReleaseNotes"
			Group="Behavior"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RequiresPayment"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="StageCode"
			Group="Behavior"
			Type="Integer"
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
			Name="UseTransparency"
			Group="Behavior"
			InitialValue="True"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Version"
			Group="Behavior"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="VersionAsDouble"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
