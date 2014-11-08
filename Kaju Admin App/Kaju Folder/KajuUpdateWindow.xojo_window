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
   Width           =   1024
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
      Height          =   467
      HelpTag         =   ""
      Hierarchical    =   False
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   ""
      Italic          =   False
      Left            =   178
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      RequiresSelection=   True
      Scope           =   0
      ScrollbarHorizontal=   False
      ScrollBarVertical=   True
      SelectionType   =   0
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   62
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
      Height          =   467
      HelpTag         =   ""
      Index           =   -2147483648
      Left            =   308
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Renderer        =   0
      Scope           =   0
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   62
      Visible         =   True
      Width           =   696
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
      Left            =   919
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   560
      Underline       =   False
      Visible         =   True
      Width           =   85
   End
   Begin PushButton btnCancel
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   True
      Caption         =   "#kRemindMeLaterButton"
      Default         =   False
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   822
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   560
      Underline       =   False
      Visible         =   True
      Width           =   85
   End
   Begin PushButton btnMoreInfo
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   False
      Caption         =   "#kSkipVersionButton"
      Default         =   False
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   4
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   560
      Underline       =   False
      Visible         =   False
      Width           =   179
   End
End
#tag EndWindow

#tag WindowCode
	#tag Method, Flags = &h0
		Sub ChooseUpdate(checker As Kaju.UpdateChecker, updates() As Kaju.UpdateInformation)
		  self.Checker = checker
		  
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
		    
		    dim diff as integer = hvNotes.Left - lbUpdates.Left // How far we're moving it
		    
		    hvNotes.Left = lbUpdates.Left
		    btnOK.Left = btnOK.Left - diff
		    btnCancel.Left = btnCancel.Left - diff
		    
		    self.Width = self.Width - diff
		    
		    #if not TargetMacOS then
		      //
		      // Switch the buttons around for other platforms
		      //
		      dim farLeft as integer = btnCancel.Left
		      btnCancel.Left = btnOK.Left
		      btnOK.Left = farLeft
		      
		      btnCancel.Height = btnCancel.Height + 5
		      btnOK.Height = btnOK.Height + 5
		      btnMoreInfo = btnMoreInfo.Height + 5
		      
		      self.Height = self.Height + 5
		      
		    #endif
		    
		  end if
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h21
		Private Checker As Kaju.UpdateChecker
	#tag EndProperty

	#tag Constant, Name = kAppMarker, Type = String, Dynamic = False, Default = \"<<AppName>>", Scope = Private
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

	#tag Constant, Name = kTryLaterButton, Type = String, Dynamic = False, Default = \"Try Later", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kWindowTitle, Type = String, Dynamic = False, Default = \"Update Available", Scope = Public
	#tag EndConstant



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
		  
		  dim source as string = update.DisplayNotes
		  if source = "" then
		    source = "<b>NO UPDATE INFORMATION</b>"
		  end if
		  
		  hvNotes.LoadPage( source, nil )
		  
		  btnMoreInfo.Visible = update.InfoURL <> ""
		  
		  dim p as Picture = update.Image
		  if p is nil then
		    p = Checker.DefaultImage
		  end if
		  
		  self.Backdrop = p
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnOK
	#tag Event
		Sub Action()
		  dim info as Kaju.UpdateInformation = lbUpdates.RowTag( lbUpdates.ListIndex )
		  
		  self.Close
		  
		  Checker.StartInstall( info )
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnCancel
	#tag Event
		Sub Action()
		  self.Close
		  
		  Checker.StartInstall( nil )
		End Sub
	#tag EndEvent
#tag EndEvents
