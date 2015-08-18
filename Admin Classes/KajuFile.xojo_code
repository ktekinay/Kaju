#tag Class
Protected Class KajuFile
	#tag Method, Flags = &h21
		Private Sub CreateRSAKeys()
		  if mPrivateKey = "" then
		    if not Crypto.RSAGenerateKeyPair( 2048, mPrivateKey, mPublicKey ) then
		      raise new Kaju.KajuException( "Could not generate RSA keys", CurrentMethodName )
		    end if
		  end if
		  
		  return
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ExportFilename() As String
		  return mExportFilename
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ExportTo(fileOrFolder As FolderItem)
		  dim data as JSONItem = DataToJSON
		  data.Compact = false
		  data.EscapeSlashes = false
		  
		  //
		  // Perform $VERSION$ substitutions
		  //
		  dim keys() as string = Array( Kaju.UpdateInformation.kMacBinaryName, Kaju.UpdateInformation.kWindowsBinaryName, _
		  Kaju.UpdateInformation.kLinuxBinaryName )
		  
		  dim lastVersionIndex as integer = data.Count - 1
		  for versionIndex as integer = 0 to lastVersionIndex
		    dim thisVersionData as JSONItem = data( versionIndex )
		    dim thisVersion as string = thisVersionData.Value( kVersionName )
		    for each binaryKey as string in keys
		      if thisVersionData.HasName( binaryKey ) then
		        dim binaryData as JSONItem = thisVersionData.Value( binaryKey )
		        dim url as string = binaryData.Value( Kaju.BinaryInformation.kKeyURL )
		        url = InsertVersion( url, thisVersion )
		        binaryData.Value( Kaju.BinaryInformation.kKeyURL ) = url
		      end if
		    next
		  next
		  
		  dim dataString as string = data.ToString
		  
		  dim sig as string = Crypto.RSASign( dataString, PrivateKey )
		  sig = EncodeHex( sig )
		  
		  dataString = Kaju.kUpdatePacketMarker + sig + EndOfLine.UNIX + dataString
		  
		  //
		  // If it's a folder, get the child
		  //
		  dim f as FolderItem = fileOrFolder
		  if f.Directory then
		    f = f.Child( ExportFilename )
		  end if
		  
		  dim tos as TextOutputStream = TextOutputStream.Create( f )
		  tos.Write dataString
		  tos.Close
		  tos = nil
		  
		  mExportFilename = f.Name
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetVersion(version As String) As Kaju.UpdateInformation
		  dim i as integer = IndexOf( version )
		  if i <> -1 then
		    return KajuData( i )
		  else
		    return nil
		  end if
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function IndexOf(version As String) As Integer
		  version = version.Trim
		  
		  for i as integer = 0 to KajuData.Ubound
		    dim u as Kaju.UpdateInformation = KajuData( i )
		    if u.Version.Trim = version then
		      return i
		    end if
		  next
		  
		  return -1
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function InsertVersion(originalURL As String, version As String) As String
		  return originalURL.ReplaceAllB( "$VERSION$", version )
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Load(f As FolderItem)
		  dim tis as TextInputStream = TextInputStream.Open( f )
		  tis.Encoding = Encodings.UTF8
		  dim contents as string = tis.ReadAll()
		  tis.Close
		  tis = nil
		  
		  dim root as new JSONItem( contents )
		  
		  mPrivateKey = root.Lookup( kPrivateKeyName, "" )
		  mPublicKey = root.Lookup( kPublicKeyName, "" )
		  
		  //
		  // Going to use the orinal default here in case this is an old file
		  //
		  mExportFilename = root.Lookup( kExportFilenameName, "UpdateInformation.html" )
		  
		  redim KajuData( -1 )
		  
		  dim data as JSONItem = root.Lookup( kDataName, nil )
		  if data isa JSONItem then
		    dim lastIndex as integer = data.Count - 1
		    for i as integer = 0 to lastIndex
		      dim update as new Kaju.UpdateInformation( data( i ) )
		      KajuData.Append update
		    next
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function PrivateKey() As String
		  CreateRSAKeys
		  return mPrivateKey
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function PublicKey() As String
		  CreateRSAKeys
		  return mPublicKey
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SaveTo(f As FolderItem)
		  dim master as JSONItem = ToJSON
		  master.Compact = false
		  
		  dim toSave as string = master.ToString
		  
		  dim bs as BinaryStream = BinaryStream.Create( f, true )
		  bs.Write( toSave )
		  bs.Close
		  
		  dim tis as TextInputStream = TextInputStream.Open( f )
		  dim compare as string = tis.ReadAll
		  tis.Close
		  
		  dim jCompare as new JSONItem( compare )
		  jCompare.Compact = master.Compact
		  
		  if not StrComp( toSave, jCompare.ToString, 0 ) = 0 then
		    raise new IOException
		  end if
		  
		End Sub
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  dim data as new JSONItem( "[]" )
			  for each update as Kaju.UpdateInformation in KajuData
			    data.Append update.ToJSON
			  next
			  
			  return data
			End Get
		#tag EndGetter
		DataToJSON As JSONItem
	#tag EndComputedProperty

	#tag Property, Flags = &h0
		KajuData() As Kaju.UpdateInformation
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mExportFilename As String = "UpdateInformation.json"
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mPrivateKey As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mPublicKey As String
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  dim root as new JSONItem
			  root.Value( kPrivateKeyName ) = PrivateKey
			  root.Value( kPublicKeyName ) = PublicKey
			  root.Value( kExportFilenameName ) = ExportFilename
			  
			  dim data as JSONItem = DataToJSON
			  root.Value( kDataName ) = data
			  
			  return root
			End Get
		#tag EndGetter
		ToJSON As JSONItem
	#tag EndComputedProperty


	#tag Constant, Name = kDataName, Type = String, Dynamic = False, Default = \"KajuData", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kExportFilenameName, Type = String, Dynamic = False, Default = \"ExportFilename", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kPrivateKeyName, Type = String, Dynamic = False, Default = \"PrivateKey", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kPublicKeyName, Type = String, Dynamic = False, Default = \"PublicKey", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kVersionName, Type = String, Dynamic = False, Default = \"Version", Scope = Public
	#tag EndConstant


	#tag ViewBehavior
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
