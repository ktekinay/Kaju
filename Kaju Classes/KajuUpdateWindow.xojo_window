#tag Window
Begin Window KajuUpdateWindow
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   CloseButton     =   False
   Compatibility   =   ""
   Composite       =   True
   Frame           =   0
   FullScreen      =   False
   FullScreenButton=   False
   HasBackColor    =   False
   Height          =   600
   ImplicitInstance=   False
   LiveResize      =   False
   MacProcID       =   0
   MaxHeight       =   32000
   MaximizeButton  =   False
   MaxWidth        =   32000
   MenuBar         =   0
   MenuBarVisible  =   True
   MinHeight       =   64
   MinimizeButton  =   False
   MinWidth        =   64
   Placement       =   2
   Resizeable      =   False
   Title           =   "#kWindowTitle"
   Visible         =   True
   Width           =   800
   Begin Listbox lbUpdates
      AutoDeactivate  =   True
      AutoHideScrollbars=   True
      Bold            =   False
      Border          =   True
      ColumnCount     =   1
      ColumnsResizable=   False
      ColumnWidths    =   ""
      DataField       =   ""
      DataSource      =   ""
      DefaultRowHeight=   -1
      Enabled         =   True
      EnableDrag      =   False
      EnableDragReorder=   False
      GridLinesHorizontal=   0
      GridLinesVertical=   0
      HasHeading      =   False
      HeadingIndex    =   -1
      Height          =   445
      HelpTag         =   ""
      Hierarchical    =   False
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      RequiresSelection=   True
      Scope           =   2
      ScrollbarHorizontal=   False
      ScrollBarVertical=   True
      SelectionType   =   0
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   84
      Underline       =   False
      UseFocusRing    =   False
      Visible         =   True
      Width           =   130
      _ScrollOffset   =   0
      _ScrollWidth    =   -1
   End
   Begin HTMLViewer hvNotes
      AutoDeactivate  =   True
      Enabled         =   True
      Height          =   445
      HelpTag         =   ""
      Index           =   -2147483648
      Left            =   149
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Renderer        =   0
      Scope           =   2
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   84
      Visible         =   True
      Width           =   631
   End
   Begin PushButton btnOK
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   False
      Caption         =   "#kInstallButton"
      Default         =   True
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   630
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   2
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   555
      Underline       =   False
      Visible         =   True
      Width           =   150
   End
   Begin PushButton btnCancel
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   True
      Caption         =   "#kRemindMeLaterButton"
      Default         =   False
      Enabled         =   True
      Height          =   25
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   468
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   2
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   555
      Underline       =   False
      Visible         =   True
      Width           =   150
   End
   Begin PushButton btnSkipVersion
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   False
      Caption         =   "#kSkipVersionButton"
      Default         =   False
      Enabled         =   True
      Height          =   25
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   149
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   2
      TabIndex        =   4
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   555
      Underline       =   False
      Visible         =   True
      Width           =   150
   End
   Begin Label lblMain
      AutoDeactivate  =   True
      Bold            =   True
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   149
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   2
      Selectable      =   False
      TabIndex        =   5
      TabPanelIndex   =   0
      Text            =   "Untitled"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   14
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   631
   End
   Begin Label lblSecondary
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   25
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   149
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   True
      Scope           =   2
      Selectable      =   False
      TabIndex        =   6
      TabPanelIndex   =   0
      Text            =   "Untitled"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   39
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   631
   End
   Begin Label Label1
      AutoDeactivate  =   True
      Bold            =   True
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   149
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   2
      Selectable      =   False
      TabIndex        =   7
      TabPanelIndex   =   0
      Text            =   "#kReleaseNotes"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "SmallSystem"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   64
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   631
   End
   Begin Label lblInstallMessage
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   149
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   2
      Selectable      =   False
      TabIndex        =   8
      TabPanelIndex   =   0
      Text            =   "Downloading..."
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   555
      Transparent     =   False
      Underline       =   False
      Visible         =   False
      Width           =   294
   End
   Begin ProgressBar pbProgress
      AutoDeactivate  =   True
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Maximum         =   0
      Scope           =   2
      TabPanelIndex   =   0
      Top             =   555
      Value           =   0
      Visible         =   False
      Width           =   117
   End
   Begin HTTPSecureSocket hsSocket
      CertificateFile =   
      CertificatePassword=   ""
      CertificateRejectionFile=   
      ConnectionType  =   2
      Height          =   32
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   0
      LockedInPosition=   False
      Scope           =   2
      Secure          =   False
      TabPanelIndex   =   0
      Top             =   0
      Width           =   32
   End
   Begin Kaju.ZipShell shZipper
      Arguments       =   ""
      Backend         =   ""
      Canonical       =   False
      Height          =   32
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   0
      LockedInPosition=   False
      Mode            =   1
      Scope           =   2
      TabPanelIndex   =   0
      TimeOut         =   0
      Top             =   0
      Width           =   32
   End
   Begin HTMLViewer hvNewWindow
      AutoDeactivate  =   True
      Enabled         =   True
      Height          =   200
      HelpTag         =   ""
      Index           =   -2147483648
      Left            =   -345
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Renderer        =   0
      Scope           =   2
      TabIndex        =   9
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   119
      Visible         =   False
      Width           =   300
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Close()
		  if CurrentStage = Stage.Cancelled then
		    for each f as FolderItem in DeleteOnCancel
		      DeleteRecursive( f )
		    next
		  end if
		  
		  for each f as FolderItem in DeleteOnClose
		    DeleteRecursive( f )
		  next
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub Cancel()
		  CurrentStage = Stage.Cancelled
		  
		  SelectedUpdate = nil
		  Kaju.CancelUpdate
		  
		  if hsSocket.IsConnected then
		    hsSocket.Disconnect
		  end if
		  
		  if shZipper.IsRunning then
		    shZipper.Close
		  end if
		  
		  self.Close
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ChooseUpdate(checker As Kaju.UpdateChecker, updates() As Kaju.UpdateInformation)
		  self.Checker = checker
		  CurrentStage = Stage.ChoosingUpdate
		  
		  //
		  // Set up the labels
		  //
		  
		  if Updates.Ubound = 0 then
		    lblMain.Text = kMainNoticeOne
		    lblSecondary.Text = kSecondaryNoticeOne
		    lblSecondary.Text = lblSecondary.Text.ReplaceAll( kNewVersionMarker, Updates( 0 ).Version )
		  else
		    lblMain.Text = kMainNoticeMultiple
		    lblSecondary.Text = kSecondaryNoticeMultiple
		  end if
		  
		  lblMain.Text = lblMain.Text.ReplaceAll( kAppMarker, AppName )
		  lblSecondary.Text = lblSecondary.Text.ReplaceAll( kThisVersionMarker, Kaju.AppVersionString )
		  
		  //
		  // Set up the listbox with the available updates.
		  // It will set up the rest of the controls.
		  //
		  
		  for i as integer = 0 to Updates.Ubound
		    dim update as Kaju.UpdateInformation = updates( i )
		    lbUpdates.AddRow update.Version
		    lbUpdates.RowTag( i ) = update
		  next
		  
		  lbUpdates.SortedColumn = 0
		  lbUpdates.ColumnSortDirection( 0 ) = 1
		  lbUpdates.Sort
		  
		  lbUpdates.ListIndex = 0
		  
		  if updates.Ubound = 0 then
		    //
		    // Only one update so hide the listbox
		    //
		    lbUpdates.Visible = false
		    
		    //
		    // Move everything
		    //
		    
		    'dim diff as integer = hvNotes.Left - lbUpdates.Left // How far we're moving it
		    '
		    'hvNotes.Left = lbUpdates.Left
		    'btnOK.Left = btnOK.Left - diff
		    'btnCancel.Left = btnCancel.Left - diff
		    '
		    'self.Width = self.Width - diff
		    
		  end if
		  
		  #if not TargetMacOS then
		    //
		    // Switch the buttons around for other platforms
		    //
		    dim farLeft as integer = btnCancel.Left
		    btnCancel.Left = btnOK.Left
		    btnOK.Left = farLeft
		    
		    'btnCancel.Height = btnCancel.Height + 5
		    'btnOK.Height = btnOK.Height + 5
		    'btnSkipVersion.Height = btnSkipVersion.Height + 5
		    '
		    'self.Height = self.Height + 5
		    
		  #endif
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub DeleteRecursive(f As FolderItem)
		  if f is nil or not f.Exists or not f.IsWriteable then
		    return
		  end if
		  
		  if f.Directory then
		    
		    dim files() as FolderItem
		    dim folders() as FolderItem
		    
		    dim cnt as integer = f.Count
		    for i as integer = 1 to cnt
		      dim thisItem as FolderItem = f.Item( i )
		      if thisItem.Directory then
		        folders.Append thisItem
		      else
		        files.Append thisItem
		      end if
		    next
		    
		    for each fldr as FolderItem in folders
		      DeleteRecursive( fldr )
		    next
		    
		    for each file as FolderItem in files
		      file.Delete
		    next
		    
		  end if
		  
		  f.Delete
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub DisplayVersionInfo(update As Kaju.UpdateInformation)
		  //
		  // Fill in the viewer
		  //
		  
		  self.Loading = true
		  
		  dim source as string = update.ReleaseNotes
		  if source = "" then
		    source = "<b>NO UPDATE INFORMATION</b>"
		  end if
		  
		  hvNotes.LoadPage( source, nil )
		  
		  dim useTransparency as boolean = update.UseTransparency
		  dim p as Picture = update.Image
		  if p is nil then
		    p = Checker.DefaultImage
		    useTransparency = Checker.DefaultUseTransparency
		  end if
		  
		  if p <> nil and useTransparency then
		    dim faded as new Picture( p.Width, p.Height, 32 )
		    faded.Transparent = Picture.TransparentWhite
		    faded.Graphics.Transparency = 50.0
		    faded.Graphics.DrawPicture( p, 0, 0 )
		    dim mask as new Picture( p.Width, p.Height )
		    mask.Graphics.DrawPicture( p.Mask, 0, 0 )
		    faded.Mask = mask
		    p = faded
		  end if
		  
		  self.Backdrop = p
		  
		  self.Loading = false
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ShowError()
		  lblInstallMessage.Visible = true
		  lblInstallMessage.Text = kGenericErrorMessage
		  pbProgress.Visible = false
		  
		  btnOK.Enabled = false
		  btnCancel.Caption = kTryLaterButton
		  btnSkipVersion.Visible = false
		  
		  CurrentStage = Stage.UpdateError
		End Sub
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  if mAppName = "" then
			    mAppName = kThisApplication
			  end if
			  
			  return mAppName
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mAppName = value
			End Set
		#tag EndSetter
		AppName As String
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private Checker As Kaju.UpdateChecker
	#tag EndProperty

	#tag Property, Flags = &h21
		Private CurrentStage As Stage
	#tag EndProperty

	#tag Property, Flags = &h21
		#tag Note
			Files/folders that shoudl be deleted if the user cancelled
		#tag EndNote
		Private DeleteOnCancel() As FolderItem
	#tag EndProperty

	#tag Property, Flags = &h21
		#tag Note
			Files/Folders that should be deleted upon window close
		#tag EndNote
		Private DeleteOnClose() As FolderItem
	#tag EndProperty

	#tag Property, Flags = &h21
		Private DownloadFile As FolderItem
	#tag EndProperty

	#tag Property, Flags = &h21
		Private Loading As Boolean
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mAppName As String
	#tag EndProperty

	#tag Property, Flags = &h0
		SelectedUpdate As Kaju.UpdateInformation
	#tag EndProperty


	#tag Constant, Name = kAppMarker, Type = String, Dynamic = False, Default = \"<<AppName>>", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kBadDownloadMessage, Type = String, Dynamic = False, Default = \"The downloaded file appears to be corrupted.", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kCancelButton, Type = String, Dynamic = False, Default = \"&Cancel", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kDownloadingMessage, Type = String, Dynamic = False, Default = \"Downloading...", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kDryRunMessage, Type = String, Dynamic = False, Default = \"(Dry run\x2C not really installing)", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kGenericErrorMessage, Type = String, Dynamic = False, Default = \"An error has occurred.", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kInstallButton, Type = String, Dynamic = False, Default = \"Install Update", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kMainNoticeMultiple, Type = String, Dynamic = False, Default = \"New versions of <<AppName>> are available!", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kMainNoticeOne, Type = String, Dynamic = False, Default = \"A new version of <<AppName>> is available!", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kNewVersionMarker, Type = String, Dynamic = False, Default = \"<<NewVersion>>", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kProcessingFileMessage, Type = String, Dynamic = False, Default = \"Processing file...", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kQuitButton, Type = String, Dynamic = False, Default = \"Quit && Install", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kReadyMessage, Type = String, Dynamic = False, Default = \"Ready to install", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kReleaseNotes, Type = String, Dynamic = False, Default = \"Release Notes:", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kRemindMeLaterButton, Type = String, Dynamic = False, Default = \"Remind Me Later", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kSecondaryNoticeMultiple, Type = String, Dynamic = False, Default = \"You have version <<ThisVersion>> and there are multiple updates available. Install one\?", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kSecondaryNoticeOne, Type = String, Dynamic = False, Default = \"You have version <<ThisVersion>>. Would you like to install version <<NewVersion>>\?", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kSkipVersionButton, Type = String, Dynamic = False, Default = \"Skip Version", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kStopButton, Type = String, Dynamic = False, Default = \"Stop", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kThisApplication, Type = String, Dynamic = False, Default = \"this application", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kThisVersionMarker, Type = String, Dynamic = False, Default = \"<<ThisVersion>>", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kTryLaterButton, Type = String, Dynamic = False, Default = \"Try Later", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kWindowTitle, Type = String, Dynamic = False, Default = \"Update Available", Scope = Private
	#tag EndConstant


	#tag Enum, Name = Stage, Type = Integer, Flags = &h21
		ChoosingUpdate
		  InstallingUpdate
		  WaitingToQuit
		  UpdateError
		Cancelled
	#tag EndEnum


#tag EndWindowCode

#tag Events lbUpdates
	#tag Event
		Sub Change()
		  //
		  // Fill in the viewer
		  //
		  
		  if me.ListIndex = -1 then
		    if me.ListCount <> 0 then
		      me.ListIndex = 0
		    end if
		    return
		  end if
		  
		  dim update as Kaju.UpdateInformation = me.RowTag( me.ListIndex )
		  DisplayVersionInfo( update )
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events hvNotes
	#tag Event
		Function NewWindow() As HTMLViewer
		  return hvNewWindow
		End Function
	#tag EndEvent
	#tag Event
		Function CancelLoad(URL as String) As Boolean
		  return ( not Loading )
		  
		  #pragma unused URL
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events btnOK
	#tag Event
		Sub Action()
		  select case CurrentStage
		  case Stage.ChoosingUpdate
		    //
		    // The update has been chosen
		    //
		    SelectedUpdate = lbUpdates.RowTag( lbUpdates.ListIndex )
		    
		    btnOK.Enabled = false
		    
		    btnCancel.Caption = kStopButton
		    
		    btnSkipVersion.Visible = false
		    pbProgress.Visible = true
		    lblInstallMessage.Visible = true
		    
		    lbUpdates.Enabled = false
		    
		    CurrentStage = Stage.InstallingUpdate
		    
		    if Checker.DryRun then
		      
		      lblInstallMessage.Text = kDryRunMessage
		      
		    else
		      
		      lblInstallMessage.Text = kDownloadingMessage
		      
		      dim tempFolder as FolderItem = Kaju.GetTemporaryFolder
		      DeleteOnCancel.Append tempFolder
		      
		      DownloadFile = tempFolder.Child( SelectedUpdate.PlatformBinary.FileName )
		      DeleteOnClose.Append DownloadFile
		      
		      dim url as string = SelectedUpdate.PlatformBinary.URL
		      hsSocket.Secure = url.Left( 6 ) = "https:"
		      
		      hsSocket.Get( url, DownloadFile )
		      
		    end if
		    
		  case Stage.WaitingToQuit
		    //
		    // The user chose Install so move this window to the back
		    //
		    dim lastWindowIndex as integer = WindowCount - 1
		    if not( Window( lastWindowIndex ) Is self ) then
		      dim showIndex as integer = lastWindowIndex
		      for windowIndex as integer = lastWindowIndex downto 0
		        dim w as Window = Window( showIndex )
		        if w Is self then
		          showIndex = showIndex - 1
		        else
		          w.Show
		        end if
		      next
		    end if
		    
		    Quit
		    
		  end
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnCancel
	#tag Event
		Sub Action()
		  self.Cancel
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnSkipVersion
	#tag Event
		Sub Action()
		  //
		  // We can only ignore versions if we already have the minimum requried
		  //
		  
		  dim info as Kaju.UpdateInformation = lbUpdates.RowTag( lbUpdates.ListIndex )
		  
		  if info.MinimumRequiredVersion <> "" and _
		    Kaju.VersionToDouble( Kaju.AppVersionString ) < Kaju.VersionToDouble( info.MinimumRequiredVersion )  then
		    
		    MsgBox "You cannot skip versions until you have updated to version " + info.MinimumRequiredVersion + " or beyond."
		    
		  else
		    
		    Checker.IgnoreVersion( info.Version )
		    
		    if lbUpdates.ListCount = 1 then
		      SelectedUpdate = nil
		      Kaju.CancelUpdate
		      self.Close
		    else
		      lbUpdates.RemoveRow( lbUpdates.ListIndex )
		      lbUpdates.ListIndex = 0
		    end if
		    
		  end if
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events hsSocket
	#tag Event
		Sub ReceiveProgress(bytesReceived as integer, totalBytes as integer, newData as string)
		  if CurrentStage = Stage.Cancelled then
		    //
		    // Do nothing
		    //
		    return
		  end if
		  
		  pbProgress.Maximum = totalBytes
		  pbProgress.Value = bytesReceived
		  
		  
		  #pragma unused newData
		End Sub
	#tag EndEvent
	#tag Event
		Sub DownloadComplete(url as string, httpStatus as integer, headers as internetHeaders, file as folderItem)
		  if CurrentStage = Stage.Cancelled then
		    //
		    // Do nothing
		    //
		    return
		  end if
		  
		  pbProgress.Maximum = -1
		  pbProgress.Value = 0
		  
		  if httpStatus <> 200 then
		    
		    ShowError()
		    
		  elseif Kaju.HashOfFile( file ) <> SelectedUpdate.PlatformBinary.Hash then
		    
		    lblInstallMessage.Text = kBadDownloadMessage
		    btnOK.Caption = kTryLaterButton
		    pbProgress.Visible = false
		    
		    CurrentStage = Stage.UpdateError
		    
		  else
		    //
		    // We have the file and it appears to be good
		    //
		    
		    lblInstallMessage.Text = kProcessingFileMessage
		    
		    dim targetFolder as FolderItem = file.Parent.Child( "decompressed" )
		    shZipper.Decompress( file, targetFolder )
		    
		  end if
		  
		  
		  #pragma unused url
		  #pragma unused headers
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events shZipper
	#tag Event
		Sub DecompressCompleted(zipFile As FolderItem, containingFolder As FolderItem)
		  //
		  // No matter what, we don't need the zip file anymore
		  //
		  zipFile.Delete
		  
		  if CurrentStage = Stage.Cancelled then
		    //
		    // Do nothing
		    //
		    return
		  end if
		  
		  dim cnt as integer = containingFolder.Count
		  
		  if cnt = 0 or SelectedUpdate is nil then
		    
		    ShowError()
		    
		  else
		    
		    dim initiator as new Kaju.UpdateInitiater
		    initiator.ReplacementAppFolder = containingFolder.Item( 1 )
		    initiator.ReplacementExecutableName = SelectedUpdate.PlatformBinary.ExecutableName
		    
		    Kaju.StartUpdate( initiator )
		    
		    btnOK.Caption = kQuitButton
		    btnCancel.Visible = true
		    btnCancel.Caption = kCancelButton
		    
		    pbProgress.Visible = false
		    
		    lblInstallMessage.Visible = true
		    lblInstallMessage.Text = kReadyMessage
		    
		    CurrentStage = Stage.WaitingToQuit
		    
		  end if
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub Error()
		  if CurrentStage = Stage.Cancelled then
		    //
		    // Do nothing
		    //
		    return
		  end if
		  
		  ShowError()
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events hvNewWindow
	#tag Event
		Function CancelLoad(URL as String) As Boolean
		  ShowURL( URL )
		  return true
		  
		End Function
	#tag EndEvent
#tag EndEvents
#tag ViewBehavior
	#tag ViewProperty
		Name="AppName"
		Group="Behavior"
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="BackColor"
		Visible=true
		Group="Appearance"
		InitialValue="&hFFFFFF"
		Type="Color"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Backdrop"
		Visible=true
		Group="Appearance"
		Type="Picture"
		EditorType="Picture"
	#tag EndViewProperty
	#tag ViewProperty
		Name="CloseButton"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Composite"
		Visible=true
		Group="Appearance"
		InitialValue="False"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Frame"
		Visible=true
		Group="Appearance"
		InitialValue="0"
		Type="Integer"
		EditorType="Enum"
		#tag EnumValues
			"0 - Document"
			"1 - Movable Modal"
			"2 - Modal Dialog"
			"3 - Floating Window"
			"4 - Plain Box"
			"5 - Shadowed Box"
			"6 - Rounded Window"
			"7 - Global Floating Window"
			"8 - Sheet Window"
			"9 - Metal Window"
			"10 - Drawer Window"
			"11 - Modeless Dialog"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="FullScreen"
		Group="Appearance"
		InitialValue="False"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="FullScreenButton"
		Visible=true
		Group="Appearance"
		InitialValue="False"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasBackColor"
		Visible=true
		Group="Appearance"
		InitialValue="False"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Height"
		Visible=true
		Group="Position"
		InitialValue="400"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="ImplicitInstance"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Interfaces"
		Visible=true
		Group="ID"
		Type="String"
		EditorType="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="LiveResize"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MacProcID"
		Visible=true
		Group="Appearance"
		InitialValue="0"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaxHeight"
		Visible=true
		Group="Position"
		InitialValue="32000"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaximizeButton"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaxWidth"
		Visible=true
		Group="Position"
		InitialValue="32000"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBar"
		Visible=true
		Group="Appearance"
		Type="MenuBar"
		EditorType="MenuBar"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBarVisible"
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinHeight"
		Visible=true
		Group="Position"
		InitialValue="64"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinimizeButton"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinWidth"
		Visible=true
		Group="Position"
		InitialValue="64"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Name"
		Visible=true
		Group="ID"
		Type="String"
		EditorType="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Placement"
		Visible=true
		Group="Position"
		InitialValue="0"
		Type="Integer"
		EditorType="Enum"
		#tag EnumValues
			"0 - Default"
			"1 - Parent Window"
			"2 - Main Screen"
			"3 - Parent Window Screen"
			"4 - Stagger"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="Resizeable"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Super"
		Visible=true
		Group="ID"
		Type="String"
		EditorType="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Title"
		Visible=true
		Group="Appearance"
		InitialValue="Untitled"
		Type="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Visible"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Width"
		Visible=true
		Group="Position"
		InitialValue="600"
		Type="Integer"
	#tag EndViewProperty
#tag EndViewBehavior
