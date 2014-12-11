#tag Class
Protected Class ZipShell
Inherits Shell
	#tag Event
		Sub Completed()
		  if ErrorCode <> 0 then
		    
		    RaiseEvent Error()
		    
		  else
		    
		    ResultFolderItem = new FolderItem( ResultFolderItem.NativePath, FolderItem.PathTypeNative )
		    
		    select case CurrentOperation
		    case Operation.Compressing
		      RaiseEvent CompressCompleted( ResultFolderItem)
		      
		    case Operation.Decompressing
		      RaiseEvent DecompressCompleted( ZipFile, ResultFolderItem )
		      
		    end
		    
		  end if
		  
		  ResultFolderItem = nil
		  ZipFile = nil
		  mCurrentOperation = Operation.None
		  
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub Compress(source As FolderItem, destFile As FolderItem = Nil)
		  if destFile is nil then
		    destFile = source.Parent.Child( source.Name + ".zip" )
		  elseif destFile.Directory then
		    destFile = destFile.Child( source.Name + ".zip" )
		  end if
		  
		  ResultFolderItem = destFile
		  
		  #if TargetMacOS then
		    
		    dim cmd as string = kDittoCmd + "-c -k --sequesterRsrc --keepParent "
		    
		    cmd = cmd + source.ShellPath + " " + destFile.ShellPath
		    Execute( cmd )
		    
		    if Mode <> 0 then
		      mCurrentOperation = Operation.Compressing
		    end if
		    
		  #endif
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ContentsOf(zipFile As FolderItem) As String
		  // Gets the contents of a the given zip file.
		  // For this purpose, assumes that there is only one main item within the
		  // file.
		  
		  dim sh as new Shell
		  sh.Mode = 0
		  
		  dim cmd as string
		  
		  #if TargetMacOS then
		    cmd = kZipInfoCmd + "-1 " + zipFile.ShellPath
		  #endif
		  
		  sh.Execute( cmd )
		  dim result as string = sh.Result
		  result = ReplaceLineEndings( result, EndOfLine.UNIX )
		  result = result.NthFieldB( EndOfLine.UNIX, 1 )
		  
		  if result.Right( kPathSep.Len ) = kPathSep then
		    result = result.Left( result.Len - kPathSep.Len )
		  end if
		  
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CurrentOperation() As Operation
		  return mCurrentOperation
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Decompress(file As FolderItem, toFolder As FolderItem = Nil)
		  if toFolder is nil then
		    toFolder = file.Parent
		  end if
		  
		  ResultFolderItem = toFolder
		  ZipFile = file
		  
		  dim cmd as string
		  #if TargetMacOS then
		    
		    cmd = kDittoCmd + "-x -k "
		    cmd = cmd + file.ShellPath + " " + toFolder.ShellPath
		    
		  #elseif TargetLinux then
		    
		    cmd = kUnzipCmd + file.ShellPath + " -d " + toFolder.ShellPath
		    
		  #else // Windows
		    
		  #endif
		  
		  Execute cmd
		  
		  if Mode <> 0 then
		    mCurrentOperation = Operation.Decompressing
		  end if
		  
		  #pragma warning "Finish Windows code"
		End Sub
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event CompressCompleted(file As FolderItem)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event DecompressCompleted(zipFile As FolderItem, containingFolder As FolderItem)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event Error()
	#tag EndHook


	#tag Property, Flags = &h21
		Private mCurrentOperation As Operation
	#tag EndProperty

	#tag Property, Flags = &h21
		Private Shared mWindows7zNativePath As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private ResultFolderItem As FolderItem
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  const k7zFolderName = "7z"
			  const k7zAppName = "7z.exe"
			  
			  dim r as string
			  
			  #if TargetWin32 then
			    
			    r = mWindows7zNativePath
			    dim f as FolderItem
			    if r.Trim = "" then
			      // 
			      // Find the Libs folder
			      //
			      dim parent as FolderItem = App.ExecutableFile.Parent
			      f = parent.Child( App.ExecutableFile.Name + " Libs" )
			      if f is nil or not f.Directory then
			        // 
			        // Still haven't found it
			        //
			        f = parent.Child( "Libs" )
			      end if
			      
			      if f is nil or not f.Exists then
			        raise new Kaju.KajuException( Kaju.KajuException.kErrorCantFindLibsFolder )
			      end if
			      
			      //
			      // f has the Libs folder
			      //
			      f = f.Child( k7zFolderName )
			      if f <> nil and f.Directory then
			        f = f.Child( k7zAppName )
			      else
			        f = nil // Can't find it
			      end if
			      
			      if f <> nil and f.Exists then
			        r = f.NativePath
			      end if
			      
			    end if // r.Trim = ""
			    
			  #endif
			  
			  return r
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mWindows7zNativePath = value
			  
			End Set
		#tag EndSetter
		Shared Windows7zNativePath As String
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private ZipFile As FolderItem
	#tag EndProperty


	#tag Constant, Name = kDittoCmd, Type = String, Dynamic = False, Default = \"/usr/bin/ditto ", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kPathSep, Type = String, Dynamic = False, Default = \"/", Scope = Private
		#Tag Instance, Platform = Windows, Language = Default, Definition  = \"\\"
	#tag EndConstant

	#tag Constant, Name = kUnzipCmd, Type = String, Dynamic = False, Default = \"/usr/bin/unzip ", Scope = Private
		#Tag Instance, Platform = Linux, Language = Default, Definition  = \"/usr/bin/unzip "
		#Tag Instance, Platform = Windows, Language = Default, Definition  = \"7z.exe "
	#tag EndConstant

	#tag Constant, Name = kZipInfoCmd, Type = String, Dynamic = False, Default = \"/usr/bin/zipinfo ", Scope = Private
	#tag EndConstant


	#tag Enum, Name = Operation, Type = Integer, Flags = &h0
		None
		  Compressing
		  Decompressing
		Listing
	#tag EndEnum


	#tag ViewBehavior
		#tag ViewProperty
			Name="Arguments"
			Visible=true
			Type="String"
			EditorType="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Backend"
			Visible=true
			Type="String"
			EditorType="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Canonical"
			Visible=true
			Type="Boolean"
			EditorType="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Mode"
			Visible=true
			Type="Integer"
			EditorType="Integer"
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
			Name="TimeOut"
			Visible=true
			Type="Integer"
			EditorType="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			Type="Integer"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
