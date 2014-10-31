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
   ImplicitInstance=   True
   LiveResize      =   True
   MacProcID       =   0
   MaxHeight       =   32000
   MaximizeButton  =   False
   MaxWidth        =   32000
   MenuBar         =   0
   MenuBarVisible  =   True
   MinHeight       =   64
   MinimizeButton  =   False
   MinWidth        =   64
   Placement       =   0
   Resizeable      =   False
   Title           =   "Update"
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
      Height          =   559
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
      RequiresSelection=   False
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
      Top             =   14
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   130
      _ScrollWidth    =   -1
   End
   Begin HTMLViewer hvNotes
      AutoDeactivate  =   True
      Enabled         =   True
      Height          =   495
      HelpTag         =   ""
      Index           =   -2147483648
      Left            =   162
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
      Top             =   14
      Visible         =   True
      Width           =   618
   End
   Begin PushButton btnOK
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   False
      Caption         =   "OK"
      Default         =   True
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   675
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
      Top             =   537
      Underline       =   False
      Visible         =   True
      Width           =   80
   End
   Begin PushButton btnCancel
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   True
      Caption         =   "Cancel"
      Default         =   False
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   571
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
      Top             =   537
      Underline       =   False
      Visible         =   True
      Width           =   80
   End
   Begin PushButton btnMoreInfo
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   False
      Caption         =   "More Information"
      Default         =   False
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   162
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
      Top             =   537
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
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnCancel
	#tag Event
		Sub Action()
		  self.Close
		  
		End Sub
	#tag EndEvent
#tag EndEvents
