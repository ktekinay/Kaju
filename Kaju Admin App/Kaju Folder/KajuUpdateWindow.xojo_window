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
      Height          =   25
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
      Left            =   284
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
      Text            =   "Starting installation..."
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   555
      Transparent     =   False
      Underline       =   False
      Visible         =   False
      Width           =   334
   End
   Begin ProgressBar pbProgress
      AutoDeactivate  =   True
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   140
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
      Width           =   123
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
      Left            =   0
      LockedInPosition=   False
      Mode            =   1
      Scope           =   2
      TabPanelIndex   =   0
      TimeOut         =   0
      Top             =   0
      Width           =   32
   End
End
#tag EndWindow

#tag WindowCode
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
		    
		    btnCancel.Height = btnCancel.Height + 5
		    btnOK.Height = btnOK.Height + 5
		    btnSkipVersion = btnSkipVersion.Height + 5
		    
		    self.Height = self.Height + 5
		    
		  #endif
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub DisplayVersionInfo(update As Kaju.UpdateInformation)
		  //
		  // Fill in the viewer
		  //
		  
		  dim source as string = update.DisplayNotes
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
		Private DownloadFile As FolderItem
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
#tag Events btnOK
	#tag Event
		Sub Action()
		  select case CurrentStage
		  case Stage.ChoosingUpdate
		    //
		    // The update has been chosen
		    //
		    SelectedUpdate = lbUpdates.RowTag( lbUpdates.ListIndex )
		    
		    btnOK.Caption = kStopButton
		    btnCancel.Visible = false
		    btnSkipVersion.Visible = false
		    pbProgress.Visible = true
		    lblInstallMessage.Visible = true
		    
		    CurrentStage = Stage.InstallingUpdate
		    
		    if not Checker.DryRun then
		      DownloadFile = GetTemporaryFolderItem
		      
		      dim url as string = SelectedUpdate.PlatformBinary.URL
		      hsSocket.Secure = url.Left( 6 ) = "https:"
		      
		      hsSocket.Get( url, DownloadFile )
		    end if
		    
		  case Stage.InstallingUpdate
		    //
		    // The user chose "Stop"
		    //
		    SelectedUpdate = nil
		    self.Close
		    
		  case Stage.WaitingToQuit
		    //
		    // The user chose Install
		    //
		    
		    Quit
		    
		  case Stage.UpdateError
		    //
		    // There was an error so just close
		    //
		    SelectedUpdate = nil
		    self.Close
		    
		  end
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnCancel
	#tag Event
		Sub Action()
		  SelectedUpdate = nil
		  self.Close
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnSkipVersion
	#tag Event
		Sub Action()
		  dim info as Kaju.UpdateInformation = lbUpdates.RowTag( lbUpdates.ListIndex )
		  Checker.IgnoreVersion( info.Version )
		  
		  if lbUpdates.ListCount = 1 then
		    SelectedUpdate = nil
		    self.Close
		  else
		    lbUpdates.RemoveRow( lbUpdates.ListIndex )
		    lbUpdates.ListIndex = 0
		  end if
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events hsSocket
	#tag Event
		Sub ReceiveProgress(bytesReceived as integer, totalBytes as integer, newData as string)
		  pbProgress.Maximum = totalBytes
		  pbProgress.Value = bytesReceived
		  
		  
		  #pragma unused newData
		End Sub
	#tag EndEvent
	#tag Event
		Sub DownloadComplete(url as string, httpStatus as integer, headers as internetHeaders, file as folderItem)
		  pbProgress.Maximum = -1
		  pbProgress.Value = 0
		  
		  if httpStatus <> 0 then
		    
		    lblInstallMessage.Text = kGenericErrorMessage
		    btnOK.Caption = kTryLaterButton
		    pbProgress.Visible = false
		    
		    CurrentStage = Stage.UpdateError
		    
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
		    
		    
		    CurrentStage = Stage.WaitingToQuit
		  end if
		  
		  
		  #pragma unused url
		  #pragma unused headers
		End Sub
	#tag EndEvent
#tag EndEvents
