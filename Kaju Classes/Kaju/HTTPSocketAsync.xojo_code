#tag Class
Protected Class HTTPSocketAsync
Inherits URLConnection
	#tag Event
		Function AuthenticationRequested(realm As String, ByRef name As String, ByRef password As String) As Boolean
		  if RaiseEvent AuthenticationRequested( realm, name, password ) then
		    return true
		  end if
		  
		  if Username <> "" then
		    name = Username.ToText
		    password = self.Password.ToText
		    return true
		  else
		    return false
		  end if
		End Function
	#tag EndEvent

	#tag Event
		Sub ContentReceived(URL As String, HTTPStatus As Integer, content As String)
		  if not AllowRedirection and url <> RequestedURL then
		    httpStatus = 404
		    content = ""
		    
		  elseif content.Encoding is nil and Encodings.UTF8.IsValidData( content ) then
		    content = content.DefineEncoding( Encodings.UTF8 )
		    
		  end if
		  
		  RaiseEvent ContentReceived( url, httpStatus, content )
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub Get(url As String, allowRedirect As Boolean)
		  self.AllowRedirection = allowRedirect
		  RequestedURL = url
		  
		  Disconnect
		  
		  SetSecure url
		  super.Send "GET", url.ToText
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Get(url As String, file As FolderItem, allowRedirect As Boolean)
		  self.AllowRedirection = allowRedirect
		  RequestedURL = url
		  
		  Disconnect
		  
		  SetSecure url
		  super.Send "GET", url, file
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub Send(method As String, url As String, File As FolderItem)
		  super.Send Method, URL, File
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub Send(method as Text, url as Text)
		  super.Send method, url
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub SetSecure(ByRef url As String)
		  AllowCertificateValidation = true
		  Username = ""
		  Password = ""
		  ClearRequestHeaders
		  
		  RequestHeader( "Cache-Control" ) = "private, no-cache, max-age=0"
		  RequestHeader( "Pragma" ) = "no-cache"
		  
		  url = url.ConvertEncoding( Encodings.UTF8 )
		  
		  #if not TargetMacOS then
		    
		    //
		    // See if the username and password has been specified
		    //
		    dim rx as new RegEx
		    rx.SearchPattern = "^(https?://)([^:/\x20@]+):([^:/\x20@]*)@(.*)"
		    
		    dim match as RegExMatch = rx.Search( url )
		    if match isa RegExMatch then
		      Username = DecodeURLComponent( match.SubExpressionString( 2 ) ).DefineEncoding( Encodings.UTF8 )
		      Password = DecodeURLComponent( match.SubExpressionString( 3 ) ).DefineEncoding( Encodings.UTF8 )
		      url = match.SubExpressionString( 1 ) + match.SubExpressionString( 4 )
		      url = url.DefineEncoding( Encodings.UTF8 )
		      
		      //
		      // Set the request header manually
		      //
		      dim encoded as string = EncodeBase64( Username + ":" + Password ).DefineEncoding( Encodings.UTF8 )
		      RequestHeader( "Authorization" ) = "Basic " + encoded.ToText
		    end if
		    
		  #endif
		End Sub
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event AuthenticationRequested(realm As String, ByRef name As String, ByRef password As String) As Boolean
	#tag EndHook

	#tag Hook, Flags = &h0
		Event ContentReceived(url As String, httpStatus As Integer, content As String)
	#tag EndHook


	#tag Property, Flags = &h21
		Private AllowRedirection As Boolean = False
	#tag EndProperty

	#tag Property, Flags = &h21
		Private Password As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private RequestedURL As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private Username As String
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="AllowCertificateValidation"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="HTTPStatusCode"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
