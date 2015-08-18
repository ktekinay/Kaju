#tag Class
Protected Class UpdateChecker
	#tag Method, Flags = &h0
		Sub Constructor(preferencesFolder As FolderItem, preferencesFilename As String = kDefaultPreferencesName)
		  self.PrefFile = preferencesFolder.Child( preferencesFilename )
		  
		  LoadPrefs()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub Destructor()
		  SavePrefs()
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function DryRun() As Boolean
		  return mDryRun
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Execute()
		  // Pull the data from the URL, check it, and preset the window if needed
		  // Returns true if the app should quit in preparation of the update.
		  //
		  // The caller should be prepared to handle an exception in case of error.
		  
		  //
		  // If there is already an update in progress, do nothing
		  //
		  if UpdateWindowIsOpen then
		    mResult = ResultType.UpdateAlreadyInProgress
		    return
		  end if
		  
		  //
		  // Make sure the OS is supported
		  //
		  if not OSIsSupported() then
		    mResult = ResultType.UnsupportedOS
		    return
		  end if
		  
		  //
		  // Check for write permission
		  //
		  if true then // Scope
		    
		    dim executable as FolderItem = Kaju.TrueExecutableFile
		    
		    #if TargetMacOS then
		      if not executable.Parent.IsWriteable or not Kaju.IsWriteableRecursive( executable ) then
		        mResult = ResultType.NoWritePermission
		        return
		      end if
		    #else
		      if not Kaju.IsWriteableRecursive( executable.Parent ) then
		        mResult = ResultType.NoWritePermission
		        return
		      end if
		    #endif
		    
		  end if
		  
		  mDryRun = false
		  
		  //
		  // Make sure we have some URL
		  //
		  
		  if UpdateURL.Trim = "" then
		    raise new KajuException( KajuException.kErrorMissingUpdateURL, CurrentMethodName )
		  end if
		  
		  //
		  // Look for redirection
		  //
		  dim url as string = self.UpdateURL
		  if AllowRedirection then
		    dim redirector as new Kaju.HTTPSSocket
		    url = redirector.GetRedirectAddress( url, 5 )
		  end if
		  
		  //
		  // Repeat the check until we get data or the user gives up
		  //
		  do
		    
		    dim http as new Kaju.HTTPSSocket
		    
		    dim raw as string = http.Get( url, 5 )
		    if http.HTTPStatusCode = 404 then // Not found
		      mResult = ResultType.NoUpdateAvailable
		      exit do
		      
		    elseif raw = "" then
		      if HandleError( KajuLocale.kErrorNoUpdateData ) then
		        continue do
		      else
		        exit do
		      end if
		    end if
		    
		    raw = raw.DefineEncoding( Encodings.UTF8 )
		    
		    dim firstLine as string
		    dim remainder as string
		    SeparatePacket( raw, firstLine, remainder )
		    raw = remainder
		    
		    dim sig as string = firstLine.Left( kUpdatePacketMarker.Len )
		    if StrComp( sig, kUpdatePacketMarker, 0 ) <> 0 then
		      if HandleError( KajuLocale.kErrorIncorrectPacketMarker ) then
		        continue do
		      else
		        exit do
		      end if
		    end if
		    
		    sig = firstLine.Mid( sig.Len + 1 )
		    sig = DecodeHex( sig )
		    if not Crypto.RSAVerifySignature( raw, sig, ServerPublicRSAKey ) then
		      if HandleError( KajuLocale.kErrorIncorrectPacketSignature ) then
		        continue do
		      else
		        exit do
		      end if
		    end if
		    
		    if ProcessUpdateData( raw ) then
		      exit do
		    end if
		  loop
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function HandleError(msg As String) As Boolean
		  // Displays a dialog to the user with the message and asks if they want to try again now or later
		  // Returns True to try now, False to try later
		  
		  dim r as boolean
		  
		  if IsAllowed( kAllowErrorDialog ) then
		    //
		    // The dialog is allowed
		    //
		    dim dlg as new MessageDialog
		    dlg.ActionButton.Visible = true
		    dlg.ActionButton.Caption = KajuLocale.kTryAgainButton
		    dlg.CancelButton.Visible = true
		    dlg.CancelButton.Caption = KajuLocale.kLaterButton
		    dlg.AlternateActionButton.Visible = false
		    dlg.Message = KajuLocale.kErrorOccurredMessage
		    dlg.Explanation = msg
		    
		    dim btn as MessageDialogButton = dlg.ShowModal
		    if btn is dlg.ActionButton then
		      r = true
		    else
		      r = false
		    end if
		    
		  end if
		  
		  //
		  // If the dialog wasn't allowed, just try again later
		  //
		  if not r then
		    mResult = ResultType.Error
		  end if
		  
		  return r
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub IgnoreVersion(version As String)
		  if version <> "" and IgnoreVersionsPref.IndexOf( version ) = -1 then
		    IgnoreVersionsPref.Append version
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function IsAllowed(testValue As Integer) As Boolean
		  if testValue = 0 then // Special case
		    return AllowedInteraction = 0
		  else
		    dim result as integer = AllowedInteraction and testValue
		    return result = testValue
		  end if
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function JSONToStringArray(data As JSONItem) As String()
		  dim ub as integer = data.Count - 1
		  dim arr() as string
		  redim arr( ub )
		  
		  for i as integer = 0 to ub
		    arr( i ) = data( i )
		  next
		  
		  return arr
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub LoadPrefs()
		  // Load the preferences from the known file
		  //
		  // Preferences are a JSON file
		  
		  if not PrefFile.Exists then
		    //
		    // Nothing to load
		    //
		    return
		  end if
		  
		  dim tis as TextInputStream = TextInputStream.Open( PrefFile )
		  dim raw as string = tis.ReadAll( Encodings.UTF8 )
		  
		  dim j as new JSONItem( raw )
		  
		  //
		  // Load the individual variables here
		  //
		  
		  dim ti as Introspection.TypeInfo = Introspection.GetType( self )
		  dim props() as Introspection.PropertyInfo = ti.GetProperties
		  for each prop as Introspection.PropertyInfo in props
		    dim thisName as string = prop.Name
		    if StrComp( thisName.Right( 4 ), "Pref", 0 ) <> 0 or not j.HasName( prop.Name ) then
		      continue for prop
		    end if
		    
		    if prop.PropertyType.Name = "String()" then
		      prop.Value( self ) = JSONToStringArray( j.Value( thisName ) )
		    else
		      prop.Value( self ) = j.Value( thisName )
		    end if
		  next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function OSIsSupported() As Boolean
		  // Ensures that the right tools are available on the current OS
		  
		  dim r as boolean = true // Assume it's fine
		  
		  #if TargetMacOS then
		    
		    r = true // If this app can run, it has the right tools
		    
		  #elseif TargetWin32 then
		    
		    dim sh as new Shell
		    sh.Execute "XCOPY /?"
		    r = sh.ErrorCode = 0
		    
		  #else // Linux
		    
		    dim cmds() as string = array( "rsync --version", "/usr/bin/logger --version" )
		    
		    dim sh as new shell
		    for each cmd as string in cmds
		      sh.Execute cmd
		      if sh.ErrorCode <> 0 then
		        r = false
		        exit
		      end if
		    next
		    
		  #endif
		  
		  return r
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function ProcessUpdateData(raw As String) As Boolean
		  // Return true if there was no error or if the user wants to try later
		  
		  mResult = ResultType.NoUpdateAvailable // Assume this is true
		  
		  dim j as new JSONItem( raw )
		  dim versionDouble as double = if( DryRun, -1.0, Kaju.VersionToDouble( Kaju.AppVersionString ) )
		  
		  //
		  // Get an array of the info
		  //
		  dim ub as integer = j.Count - 1
		  dim info() as Kaju.UpdateInformation
		  dim updateIsRequired as boolean
		  for i as integer = 0 to ub
		    dim thisInfo as new Kaju.UpdateInformation( j( i ) )
		    
		    //
		    // See if the binary information is present
		    //
		    if thisInfo.PlatformBinary is nil then
		      continue for i
		    end if
		    
		    //
		    // See if the stage on this update is allowed
		    //
		    if thisInfo.StageCode < AllowedStage then
		      continue for i
		    end if
		    
		    //
		    // See if this update is for a higher version
		    //
		    if thisInfo.VersionAsDouble <= versionDouble then
		      continue for i
		    end if
		    
		    //
		    // See if this update is required
		    //
		    dim thisUpdateIsRequired as boolean
		    if thisInfo.MinimumRequiredVersion <> "" and Kaju.VersionToDouble( thisInfo.MinimumRequiredVersion ) > versionDouble then
		      thisUpdateIsRequired = true
		      updateIsRequired = true
		    end if
		    
		    //
		    // An ignored version? (but only if not required)
		    //
		    if not thisUpdateIsRequired and HonorIgnored and IgnoreVersionsPref.IndexOf( thisInfo.Version ) <> -1 then
		      mResult = ResultType.IgnoredUpdateAvailable
		      continue for i
		    end if
		    
		    //
		    // This is a viable update
		    //
		    
		    info.Append thisInfo
		  next
		  
		  if info.Ubound <> -1 then
		    //
		    // There are updates
		    //
		    mResult = if( updateIsRequired, ResultType.RequiredUpdateAvailable, ResultType.UpdateAvailable )
		    if IsAllowed( kAllowUpdateWindow ) then
		      KajuUpdateWindow.ChooseUpdate( self, info )
		    end if
		  end if
		  
		  return true
		  
		  Exception err as RuntimeException
		    return not HandleError( KajuLocale.kErrorBadUpdateData )
		    
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ResetIgnored()
		  redim IgnoreVersionsPref( -1 )
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Result() As ResultType
		  return mResult
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub SavePrefs()
		  dim j as new JSONItem
		  
		  //
		  // Save the individual prefs here.
		  // Properties that end with "Pref" will be saved
		  //
		  
		  dim ti as Introspection.TypeInfo = Introspection.GetType( self )
		  dim props() as Introspection.PropertyInfo = ti.GetProperties
		  for each prop as Introspection.PropertyInfo in props
		    if StrComp( prop.Name.Right( 4 ), "Pref", 0 ) = 0 then
		      if prop.PropertyType.Name = "String()" then
		        j.Value( prop.Name ) = StringArrayToJSON( prop.Value( self ) )
		      else
		        j.Value( prop.Name ) = prop.Value( self )
		      end if
		    end if
		  next
		  
		  //
		  // Save the file
		  //
		  
		  j.Compact = false
		  dim raw as string = j.ToString
		  
		  dim tos as TextOutputStream = TextOutputStream.Create( PrefFile )
		  tos.Write raw
		  tos = nil
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub SeparatePacket(raw As String, ByRef firstLine As String, ByRef remainder As String)
		  // Separate the incoming packet by the EOL when we don't know exactly what
		  // the EOL is.
		  
		  dim rx as new RegEx
		  rx.SearchPattern = "\A([^\r\n]*)\R([\s\S]*)\z"
		  
		  dim match as RegExMatch = rx.Search( raw )
		  if match is nil then
		    //
		    // Really shouldn't happen
		    //
		    firstLine = raw
		    remainder = ""
		    
		  else
		    
		    firstLine = match.SubExpressionString( 1 )
		    remainder = match.SubExpressionString( 2 )
		    
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function StringArrayToJSON(arr() As String) As JSONItem
		  dim j as new JSONItem( "[]" )
		  for i as integer = 0 to arr.Ubound
		    j.Append arr( i )
		  next
		  
		  return j
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub TestUpdate(jsonString As String)
		  // Allows a dry run with the update information that would otherwise be obtained
		  // from the UpdateURL
		  
		  //
		  // If there is already an update in progress, do nothing
		  //
		  if UpdateWindowIsOpen then
		    mResult = ResultType.UpdateAlreadyInProgress
		    return
		  end if
		  
		  mDryRun = true
		  
		  do
		    if ProcessUpdateData( jsonString ) then
		      exit do
		    end if
		  loop
		  
		End Sub
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event ReadyToInstall()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event RequiredUpdateDeclined()
	#tag EndHook


	#tag Property, Flags = &h0
		AllowedInteraction As UInt32 = kAllowAll
	#tag EndProperty

	#tag Property, Flags = &h0
		AllowedStage As Integer = App.Development
	#tag EndProperty

	#tag Property, Flags = &h0
		AllowRedirection As Boolean = False
	#tag EndProperty

	#tag Property, Flags = &h0
		DefaultImage As Picture
	#tag EndProperty

	#tag Property, Flags = &h0
		DefaultUseTransparency As Boolean = True
	#tag EndProperty

	#tag Property, Flags = &h0
		HonorIgnored As Boolean = True
	#tag EndProperty

	#tag Property, Flags = &h21
		Private IgnoreVersionsPref() As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mDryRun As Boolean
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mResult As ResultType = ResultType.NotYetChecked
	#tag EndProperty

	#tag Property, Flags = &h21
		Private PrefFile As FolderItem
	#tag EndProperty

	#tag Property, Flags = &h0
		QuitOnCancelIfRequired As Boolean = True
	#tag EndProperty

	#tag Property, Flags = &h0
		ServerPublicRSAKey As String
	#tag EndProperty

	#tag Property, Flags = &h0
		UpdateURL As String
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  dim r as boolean
			  
			  dim lastIndex as integer = WindowCount - 1
			  for i as integer = 0 to lastIndex
			    if Window( i ) IsA KajuUpdateWindow then
			      r = true
			      exit
			    end if
			  next
			  
			  return r
			End Get
		#tag EndGetter
		UpdateWindowIsOpen As Boolean
	#tag EndComputedProperty


	#tag Constant, Name = kAllowAll, Type = Double, Dynamic = False, Default = \"&hFFFF", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kAllowErrorDialog, Type = Double, Dynamic = False, Default = \"&b00001000", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kAllowNone, Type = Double, Dynamic = False, Default = \"0", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kAllowUpdateWindow, Type = Double, Dynamic = False, Default = \"&b10000000", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kDefaultPreferencesName, Type = String, Dynamic = False, Default = \"Kaju_Preferences", Scope = Public
	#tag EndConstant


	#tag Enum, Name = ResultType, Type = Integer, Flags = &h0
		NotYetChecked = -9999
		  UpdateAlreadyInProgress = -100
		  UnsupportedOS = -70
		  NoWritePermission = -50
		  Error = -1
		  NoUpdateAvailable = 0
		  IgnoredUpdateAvailable
		  UpdateAvailable
		RequiredUpdateAvailable
	#tag EndEnum


	#tag ViewBehavior
		#tag ViewProperty
			Name="AllowedStage"
			Group="Behavior"
			InitialValue="App.Development"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AllowRedirection"
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DefaultImage"
			Group="Behavior"
			Type="Picture"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DefaultUseTransparency"
			Group="Behavior"
			InitialValue="True"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HonorIgnored"
			Group="Behavior"
			InitialValue="True"
			Type="Boolean"
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
			Name="QuitOnCancelIfRequired"
			Group="Behavior"
			InitialValue="True"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ServerPublicRSAKey"
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
			Name="UpdateURL"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="UpdateWindowIsOpen"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
