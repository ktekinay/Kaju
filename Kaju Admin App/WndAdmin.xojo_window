#tag Window
Begin Window WndAdmin
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   CloseButton     =   True
   Compatibility   =   ""
   Composite       =   True
   Frame           =   0
   FullScreen      =   False
   FullScreenButton=   False
   HasBackColor    =   False
   Height          =   680
   ImplicitInstance=   True
   LiveResize      =   True
   MacProcID       =   0
   MaxHeight       =   32000
   MaximizeButton  =   True
   MaxWidth        =   32000
   MenuBar         =   1253638004
   MenuBarVisible  =   True
   MinHeight       =   64
   MinimizeButton  =   True
   MinWidth        =   64
   Placement       =   0
   Resizeable      =   True
   Title           =   "Untitled"
   Visible         =   True
   Width           =   932
   Begin Listbox lbVersions
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
      Height          =   614
      HelpTag         =   ""
      Hierarchical    =   False
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      RequiresSelection=   False
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
      Top             =   14
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   203
      _ScrollOffset   =   0
      _ScrollWidth    =   -1
   End
   Begin PushButton btnNew
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   False
      Caption         =   "New"
      Default         =   False
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   143
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   2
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "SmallSystem"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   640
      Underline       =   False
      Visible         =   True
      Width           =   80
   End
   Begin PushButton btnDelete
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   False
      Caption         =   "Delete..."
      Default         =   False
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      Scope           =   2
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "SmallSystem"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   640
      Underline       =   False
      Visible         =   True
      Width           =   80
   End
   Begin TextField fldVersion
      AcceptTabs      =   False
      Alignment       =   0
      AutoDeactivate  =   True
      AutomaticallyCheckSpelling=   False
      BackColor       =   &cFFFFFF00
      Bold            =   False
      Border          =   True
      CueText         =   ""
      DataField       =   "Version"
      DataSource      =   ""
      Enabled         =   False
      Format          =   ""
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      Italic          =   False
      Left            =   363
      LimitText       =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Mask            =   ""
      Password        =   False
      ReadOnly        =   False
      Scope           =   2
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   52
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   80
   End
   Begin Label Label1
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   0
      InitialParent   =   ""
      Italic          =   False
      Left            =   251
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   2
      Selectable      =   False
      TabIndex        =   4
      TabPanelIndex   =   0
      Text            =   "Version:"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   53
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   100
   End
   Begin TabPanel TabPanel1
      AutoDeactivate  =   True
      Bold            =   False
      Enabled         =   True
      Height          =   542
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   251
      LockBottom      =   True
      LockedInPosition=   True
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Panels          =   ""
      Scope           =   2
      SmallTabs       =   False
      TabDefinition   =   "Release Notes\rBinaries\rImage"
      TabIndex        =   5
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   86
      Underline       =   False
      Value           =   1
      Visible         =   True
      Width           =   653
      Begin TextArea fldReleaseNotes
         AcceptTabs      =   False
         Alignment       =   0
         AutoDeactivate  =   True
         AutomaticallyCheckSpelling=   True
         BackColor       =   &cFFFFFF00
         Bold            =   False
         Border          =   True
         DataField       =   "ReleaseNotes"
         DataSource      =   ""
         Enabled         =   False
         Format          =   ""
         Height          =   210
         HelpTag         =   ""
         HideSelection   =   True
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Italic          =   False
         Left            =   271
         LimitText       =   0
         LineHeight      =   0.0
         LineSpacing     =   1.0
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Mask            =   ""
         Multiline       =   True
         ReadOnly        =   False
         Scope           =   2
         ScrollbarHorizontal=   False
         ScrollbarVertical=   True
         Styled          =   False
         TabIndex        =   0
         TabPanelIndex   =   1
         TabStop         =   True
         Text            =   ""
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   160
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   613
      End
      Begin HTMLViewer hvReleaseNotesPreview
         AutoDeactivate  =   True
         Enabled         =   True
         Height          =   210
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Left            =   271
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   False
         Renderer        =   0
         Scope           =   2
         TabIndex        =   1
         TabPanelIndex   =   1
         TabStop         =   True
         Top             =   408
         Visible         =   True
         Width           =   613
      End
      Begin Label Label1
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   4
         InitialParent   =   "TabPanel1"
         Italic          =   False
         Left            =   271
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   False
         Multiline       =   False
         Scope           =   2
         Selectable      =   False
         TabIndex        =   2
         TabPanelIndex   =   1
         Text            =   "Preview:"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "SmallSystem"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   383
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   100
      End
      Begin CheckBox cbMacBinary
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Mac"
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   False
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Italic          =   False
         Left            =   271
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   2
         State           =   0
         TabIndex        =   0
         TabPanelIndex   =   2
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   191
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   100
      End
      Begin TextField fldMacBinaryHash
         AcceptTabs      =   False
         Alignment       =   0
         AutoDeactivate  =   True
         AutomaticallyCheckSpelling=   False
         BackColor       =   &cFFFFFF00
         Bold            =   False
         Border          =   True
         CueText         =   "Drop binary here to calculate Hash"
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Format          =   ""
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Italic          =   False
         Left            =   414
         LimitText       =   0
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Mask            =   ""
         Password        =   False
         ReadOnly        =   True
         Scope           =   2
         TabIndex        =   1
         TabPanelIndex   =   2
         TabStop         =   True
         Text            =   ""
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   223
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   False
         Width           =   470
      End
      Begin TextField fldMacBinaryURL
         AcceptTabs      =   False
         Alignment       =   0
         AutoDeactivate  =   True
         AutomaticallyCheckSpelling=   False
         BackColor       =   &cFFFFFF00
         Bold            =   False
         Border          =   True
         CueText         =   ""
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Format          =   ""
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Italic          =   False
         Left            =   414
         LimitText       =   0
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Mask            =   ""
         Password        =   False
         ReadOnly        =   False
         Scope           =   2
         TabIndex        =   2
         TabPanelIndex   =   2
         TabStop         =   True
         Text            =   ""
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   257
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   False
         Width           =   470
      End
      Begin Label lblMacBinaryHash
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Italic          =   False
         Left            =   305
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   2
         Selectable      =   False
         TabIndex        =   3
         TabPanelIndex   =   2
         Text            =   "Hash:"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   224
         Transparent     =   False
         Underline       =   False
         Visible         =   False
         Width           =   67
      End
      Begin Label lblMacBinaryURL
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Italic          =   False
         Left            =   305
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   2
         Selectable      =   False
         TabIndex        =   4
         TabPanelIndex   =   2
         Text            =   "URL:"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   258
         Transparent     =   False
         Underline       =   False
         Visible         =   False
         Width           =   67
      End
      Begin Label Label1
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   7
         InitialParent   =   "TabPanel1"
         Italic          =   False
         Left            =   271
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   False
         Multiline       =   False
         Scope           =   2
         Selectable      =   False
         TabIndex        =   3
         TabPanelIndex   =   1
         Text            =   "Release Notes (HTML):"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "SmallSystem"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   138
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   142
      End
      Begin CheckBox cbWindowsBinary
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Windows"
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   False
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Italic          =   False
         Left            =   271
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   2
         State           =   0
         TabIndex        =   5
         TabPanelIndex   =   2
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   290
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   100
      End
      Begin TextField fldWindowsBinaryHash
         AcceptTabs      =   False
         Alignment       =   0
         AutoDeactivate  =   True
         AutomaticallyCheckSpelling=   False
         BackColor       =   &cFFFFFF00
         Bold            =   False
         Border          =   True
         CueText         =   "Drop binary here to calculate Hash"
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Format          =   ""
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Italic          =   False
         Left            =   414
         LimitText       =   0
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Mask            =   ""
         Password        =   False
         ReadOnly        =   True
         Scope           =   2
         TabIndex        =   6
         TabPanelIndex   =   2
         TabStop         =   True
         Text            =   ""
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   322
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   False
         Width           =   470
      End
      Begin TextField fldWindowsBinaryURL
         AcceptTabs      =   False
         Alignment       =   0
         AutoDeactivate  =   True
         AutomaticallyCheckSpelling=   False
         BackColor       =   &cFFFFFF00
         Bold            =   False
         Border          =   True
         CueText         =   ""
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Format          =   ""
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Italic          =   False
         Left            =   414
         LimitText       =   0
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Mask            =   ""
         Password        =   False
         ReadOnly        =   False
         Scope           =   2
         TabIndex        =   7
         TabPanelIndex   =   2
         TabStop         =   True
         Text            =   ""
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   356
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   False
         Width           =   470
      End
      Begin Label lblWindowsBinaryHash
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Italic          =   False
         Left            =   305
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   2
         Selectable      =   False
         TabIndex        =   8
         TabPanelIndex   =   2
         Text            =   "Hash:"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   323
         Transparent     =   False
         Underline       =   False
         Visible         =   False
         Width           =   67
      End
      Begin Label lblWindowsBinaryURL
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Italic          =   False
         Left            =   305
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   2
         Selectable      =   False
         TabIndex        =   9
         TabPanelIndex   =   2
         Text            =   "URL:"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   357
         Transparent     =   False
         Underline       =   False
         Visible         =   False
         Width           =   67
      End
      Begin CheckBox cbLinuxBinary
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Linux"
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   False
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Italic          =   False
         Left            =   271
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   2
         State           =   0
         TabIndex        =   10
         TabPanelIndex   =   2
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   390
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   100
      End
      Begin TextField fldLinuxBinaryHash
         AcceptTabs      =   False
         Alignment       =   0
         AutoDeactivate  =   True
         AutomaticallyCheckSpelling=   False
         BackColor       =   &cFFFFFF00
         Bold            =   False
         Border          =   True
         CueText         =   "Drop binary here to calculate Hash"
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Format          =   ""
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Italic          =   False
         Left            =   414
         LimitText       =   0
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Mask            =   ""
         Password        =   False
         ReadOnly        =   True
         Scope           =   2
         TabIndex        =   11
         TabPanelIndex   =   2
         TabStop         =   True
         Text            =   ""
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   422
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   False
         Width           =   470
      End
      Begin TextField fldLinuxBinaryURL
         AcceptTabs      =   False
         Alignment       =   0
         AutoDeactivate  =   True
         AutomaticallyCheckSpelling=   False
         BackColor       =   &cFFFFFF00
         Bold            =   False
         Border          =   True
         CueText         =   ""
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Format          =   ""
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Italic          =   False
         Left            =   414
         LimitText       =   0
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Mask            =   ""
         Password        =   False
         ReadOnly        =   False
         Scope           =   2
         TabIndex        =   12
         TabPanelIndex   =   2
         TabStop         =   True
         Text            =   ""
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   456
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   False
         Width           =   470
      End
      Begin Label lblLinuxBinaryHash
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Italic          =   False
         Left            =   305
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   2
         Selectable      =   False
         TabIndex        =   13
         TabPanelIndex   =   2
         Text            =   "Hash:"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   423
         Transparent     =   False
         Underline       =   False
         Visible         =   False
         Width           =   67
      End
      Begin Label lblLinuxBinaryURL
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Italic          =   False
         Left            =   305
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   2
         Selectable      =   False
         TabIndex        =   14
         TabPanelIndex   =   2
         Text            =   "URL:"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   457
         Transparent     =   False
         Underline       =   False
         Visible         =   False
         Width           =   67
      End
      Begin TextField fldImageURL
         AcceptTabs      =   False
         Alignment       =   0
         AutoDeactivate  =   True
         AutomaticallyCheckSpelling=   False
         BackColor       =   &cFFFFFF00
         Bold            =   False
         Border          =   True
         CueText         =   ""
         DataField       =   "ImageURL"
         DataSource      =   ""
         Enabled         =   False
         Format          =   ""
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Italic          =   False
         Left            =   350
         LimitText       =   0
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Mask            =   ""
         Password        =   False
         ReadOnly        =   False
         Scope           =   2
         TabIndex        =   0
         TabPanelIndex   =   3
         TabStop         =   True
         Text            =   ""
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   161
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   470
      End
      Begin Label Label1
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   8
         InitialParent   =   "TabPanel1"
         Italic          =   False
         Left            =   271
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   2
         Selectable      =   False
         TabIndex        =   1
         TabPanelIndex   =   3
         Text            =   "URL:"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   161
         Transparent     =   False
         Underline       =   False
         Visible         =   False
         Width           =   67
      End
      Begin CheckBox cbImageUseTransparency
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Use Transparency"
         DataField       =   "UseTransparency"
         DataSource      =   ""
         Enabled         =   False
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Italic          =   False
         Left            =   350
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   2
         State           =   0
         TabIndex        =   2
         TabPanelIndex   =   3
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   129
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   180
      End
      Begin HTMLViewer hvImagePreview
         AutoDeactivate  =   True
         Enabled         =   True
         Height          =   384
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Left            =   271
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   False
         Renderer        =   0
         Scope           =   2
         TabIndex        =   3
         TabPanelIndex   =   3
         TabStop         =   True
         Top             =   224
         Visible         =   True
         Width           =   613
      End
      Begin TextField fldMinRequiredVersion
         AcceptTabs      =   False
         Alignment       =   0
         AutoDeactivate  =   True
         AutomaticallyCheckSpelling=   False
         BackColor       =   &cFFFFFF00
         Bold            =   False
         Border          =   True
         CueText         =   ""
         DataField       =   "MinimumRequiriedVersion"
         DataSource      =   ""
         Enabled         =   False
         Format          =   ""
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Italic          =   False
         Left            =   483
         LimitText       =   0
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Mask            =   ""
         Password        =   False
         ReadOnly        =   False
         Scope           =   2
         TabIndex        =   15
         TabPanelIndex   =   2
         TabStop         =   True
         Text            =   ""
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   147
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   80
      End
      Begin Label Label1
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   2
         InitialParent   =   "TabPanel1"
         Italic          =   False
         Left            =   271
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   2
         Selectable      =   False
         TabIndex        =   16
         TabPanelIndex   =   2
         Text            =   "Minimum Required Version:"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   148
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   200
      End
   End
   Begin TextField fldAppName
      AcceptTabs      =   False
      Alignment       =   0
      AutoDeactivate  =   True
      AutomaticallyCheckSpelling=   False
      BackColor       =   &cFFFFFF00
      Bold            =   False
      Border          =   True
      CueText         =   ""
      DataField       =   "AppName"
      DataSource      =   ""
      Enabled         =   False
      Format          =   ""
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      Italic          =   False
      Left            =   363
      LimitText       =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Mask            =   ""
      Password        =   False
      ReadOnly        =   False
      Scope           =   2
      TabIndex        =   6
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   18
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   229
   End
   Begin Label Label1
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   3
      InitialParent   =   ""
      Italic          =   False
      Left            =   251
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
      Text            =   "App Name:"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   19
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   100
   End
   Begin CheckBox cbRequiresPayment
      AutoDeactivate  =   True
      Bold            =   False
      Caption         =   "Requires Payment"
      DataField       =   "RequiresPayment"
      DataSource      =   ""
      Enabled         =   False
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   693
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   2
      State           =   0
      TabIndex        =   10
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   19
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   180
   End
   Begin Timer tmrUpdateReleaseNotesPreview
      Height          =   32
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   0
      LockedInPosition=   False
      Mode            =   0
      Period          =   750
      Scope           =   2
      TabPanelIndex   =   0
      Top             =   0
      Width           =   32
   End
   Begin HTMLViewer hvNewWindow
      AutoDeactivate  =   True
      Enabled         =   False
      Height          =   200
      HelpTag         =   ""
      Index           =   -2147483648
      Left            =   -371
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Renderer        =   0
      Scope           =   2
      TabIndex        =   11
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   156
      Visible         =   False
      Width           =   300
   End
   Begin PushButton btnCopyPublicKey
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   False
      Caption         =   "Copy RSA Public Key"
      Default         =   False
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   718
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      Scope           =   2
      TabIndex        =   12
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   640
      Underline       =   False
      Visible         =   True
      Width           =   186
   End
   Begin Timer tmrUpdateImagePreview
      Height          =   32
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   20
      LockedInPosition=   False
      Mode            =   0
      Period          =   750
      Scope           =   2
      TabPanelIndex   =   0
      Top             =   20
      Width           =   32
   End
   Begin Label lblPlatform
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
      Left            =   577
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   13
      TabPanelIndex   =   0
      Text            =   "None"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   53
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   327
   End
   Begin Label Label1
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   9
      InitialParent   =   ""
      Italic          =   False
      Left            =   492
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   2
      Selectable      =   False
      TabIndex        =   14
      TabPanelIndex   =   0
      Text            =   "Platforms:"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   53
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   100
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Open()
		  AdjustControls()
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h21
		Private Sub AddRows(info As Kaju.Information)
		  '//
		  '// Get all the UpdateInformation properties
		  '//
		  'dim ti as Introspection.TypeInfo = Introspection.GetType( info )
		  'dim props() as Introspection.PropertyInfo = ti.GetProperties
		  '
		  'dim informationBaseTypeName as string
		  'if true then
		  'dim baseTI as Introspection.TypeInfo = GetTypeInfo( Kaju.Information )
		  'informationBaseTypeName = baseTI.FullName
		  'end if
		  '
		  'dim folders() as Introspection.PropertyInfo
		  '
		  'for each prop as Introspection.PropertyInfo in props
		  'if prop.IsPublic and prop.CanRead and prop.CanWrite then
		  'dim value as variant = prop.Value( info )
		  'dim propInfo as Introspection.TypeInfo = prop.PropertyType
		  'if propInfo.BaseType <> nil and propInfo.BaseType.FullName = informationBaseTypeName then
		  'folders.Append prop
		  '
		  'elseif not propInfo.IsPrimitive then
		  '//
		  '// Skip it
		  '//
		  '
		  'else
		  'lbInfo.AddRow( prop.Name, value.StringValue )
		  'end if
		  '
		  'end if
		  'next
		  '
		  '//
		  '// Add the folders last
		  '//
		  '
		  'for each folder as Introspection.PropertyInfo in folders
		  'lbInfo.AddFolder( folder.Name )
		  'lbInfo.RowTag( lbInfo.LastIndex ) = folder
		  'next
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub AdjustControls()
		  dim trueValue as boolean = lbVersions.ListIndex <> -1
		  
		  dim lastIndex as integer = ControlCount - 1
		  for i as integer = 0 to lastIndex
		    
		    dim c as Control = self.Control( i )
		    dim doIt as boolean = ControlDataField( c ) <> ""
		    
		    if doIt then
		      RectControl( c ).Enabled = trueValue
		    end if
		  next i
		  
		  //
		  // Adjust the outliers that aren't directly set
		  //
		  
		  cbMacBinary.Enabled = trueValue
		  cbWindowsBinary.Enabled = trueValue
		  cbLinuxBinary.Enabled = trueValue
		  
		  //
		  // Set the platform summary
		  //
		  
		  if not trueValue then
		    
		    lblPlatform.Text = ""
		    
		  else
		    
		    Redim Platforms( -1 )
		    if cbMacBinary.Enabled and cbMacBinary.Value then
		      Platforms.Append "Mac"
		    end if
		    
		    if cbWindowsBinary.Enabled and cbWindowsBinary.Value then
		      Platforms.Append "Windows"
		    end if
		    
		    if cbLinuxBinary.Enabled and cbLinuxBinary.Value then
		      Platforms.Append "Linux"
		    end if
		    
		    if Platforms.Ubound = -1 then
		      lblPlatform.Italic = true
		      lblPlatform.Text = "No platforms selected"
		    else
		      lblPlatform.Italic = false
		      lblPlatform.Text = join( Platforms, ", " )
		    end if
		    
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ClearFields()
		  self.Loading = true
		  
		  dim lastIndex as integer = ControlCount - 1
		  for i as integer = 0 to lastIndex
		    dim c as Control = self.Control( i )
		    select case c
		    case IsA TextEdit
		    case IsA CheckBox
		    else
		      continue for i
		    end
		    
		    ControlValue( c ) = nil
		  next i
		  
		  hvReleaseNotesPreview.LoadPage( "", nil )
		  hvImagePreview.LoadPage( "", nil )
		  
		  self.Loading = false
		  
		  AdjustControls()
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function ControlDataField(c As Control) As String
		  // Returns the DataField field for a control
		  
		  dim value as string
		  
		  select case c
		  case IsA TextEdit
		    dim fld as TextEdit = TextEdit( c )
		    value = fld.DataField
		    
		  case IsA CheckBox
		    dim cb as CheckBox = CheckBox( c )
		    value = cb.DataField
		    
		  end select
		  
		  return value
		   
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function ControlValue(c As Control) As Variant
		  dim r as Variant
		  
		  select case c
		  case IsA TextEdit
		    dim fld as TextEdit = TextEdit( c )
		    r = fld.Text
		    
		  case IsA CheckBox
		    dim cb as CheckBox = CheckBox( c )
		    r = cb.Value
		    
		  end select
		  
		  return r
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ControlValue(c As Control, Assigns value As Variant)
		  select case c
		  case IsA TextEdit
		    dim fld as TextEdit = TextEdit( c )
		    fld.Text = value.StringValue
		    
		  case IsA CheckBox
		    dim cb as CheckBox = CheckBox( c )
		    cb.Value = value.BooleanValue
		    
		  else
		    raise new KeyNotFoundException
		    
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub CreateRSAKeys()
		  if RSAPrivateKey = "" then
		    if not Crypto.RSAGenerateKeyPair( 2048, RSAPrivateKey, RSAPublicKey ) then
		      MsgBox "Could not create RSA key pairs."
		      self.Close
		    end if
		  end if
		  
		  return
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub DeleteVersion()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub JSONToFields(data As JSONItem)
		  //
		  // Handle the named controls first
		  //
		  
		  ClearFields()
		  
		  dim lastIndex as integer = ControlCount - 1
		  for i as integer = 0 to lastIndex
		    dim c as Control = self.Control( i )
		    
		    dim fieldName as string = ControlDataField( c )
		    if fieldName <> "" then
		      ControlValue( c ) = data.Lookup( fieldName, nil )
		    end if
		    
		  next
		  
		  //
		  // Binaries
		  //
		  
		  if data.HasName( Kaju.UpdateInformation.kMacBinaryName ) then
		    cbMacBinary.Value = true
		    dim binary as new Kaju.BinaryInformation( data.Value( Kaju.UpdateInformation.kMacBinaryName ) )
		    fldMacBinaryHash.Text = binary.Hash
		    fldMacBinaryURL.Text = binary.URL
		  end if
		  
		  if data.HasName( Kaju.UpdateInformation.kWindowsBinaryName ) then
		    cbMacBinary.Value = true
		    dim binary as new Kaju.BinaryInformation( data.Value( Kaju.UpdateInformation.kWindowsBinaryName ) )
		    fldWindowsBinaryHash.Text = binary.Hash
		    fldWindowsBinaryURL.Text = binary.URL
		  end if
		  
		  if data.HasName( Kaju.UpdateInformation.kLinuxBinaryName ) then
		    cbMacBinary.Value = true
		    dim binary as new Kaju.BinaryInformation( data.Value( Kaju.UpdateInformation.kLinuxBinaryName ) )
		    fldLinuxBinaryHash.Text = binary.Hash
		    fldLinuxBinaryURL.Text = binary.URL
		  end if
		  
		  AdjustControls()
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub NewVersion()
		  StoreFieldsToVersionRow()
		  
		  CreateRSAKeys()
		  
		  lbVersions.AddRow "1.0.0d1"
		  
		  dim j as new JSONItem()
		  j.Value( "Version" ) = lbVersions.Cell( lbVersions.LastIndex, 0 )
		  
		  dim prevIndex as integer = LastVersionRow
		  if prevIndex <> -1 and prevIndex < lbVersions.ListCount then
		    dim prevItem as JSONItem = lbVersions.RowTag( prevIndex )
		    if prevItem <> nil then
		      dim fieldName as string = fldAppName.DataField
		      j.Value( fieldName ) = prevItem.Lookup( fieldName, "" )
		    end if
		  end if
		  
		  lbVersions.RowTag( lbVersions.LastIndex ) = j
		  lbVersions.ListIndex = lbVersions.LastIndex
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub StoreFieldsToVersionRow()
		  if LastVersionRow = -1 or LastVersionRow >= lbVersions.ListCount then
		    return
		  end if
		  
		  dim j as new JSONItem( "{}" )
		  
		  //
		  // Gather the textfield data first
		  //
		  
		  dim lastIndex as integer = ControlCount - 1
		  for i as integer = 0 to lastIndex
		    dim c as Control = self.Control( i )
		    
		    dim fieldName as string = ControlDataField( c )
		    if fieldName <> "" then
		      dim value as Variant = ControlValue( c )
		      j.Value( fieldName ) = value
		    end if
		    
		  next
		  
		  //
		  // Binaries
		  //
		  
		  if cbMacBinary.Value then
		    dim binary as new Kaju.BinaryInformation
		    binary.Hash = fldMacBinaryHash.Text.Trim
		    binary.URL = fldMacBinaryURL.Text.Trim
		    
		    j.Value( Kaju.UpdateInformation.kMacBinaryName ) = binary.ToJSON
		  end if
		  
		  if cbWindowsBinary.Value then
		    dim binary as new Kaju.BinaryInformation
		    binary.Hash = fldWindowsBinaryHash.Text.Trim
		    binary.URL = fldWindowsBinaryURL.Text.Trim
		    
		    j.Value( Kaju.UpdateInformation.kWindowsBinaryName ) = binary.ToJSON
		  end if
		  
		  if cbLinuxBinary.Value then
		    dim binary as new Kaju.BinaryInformation
		    binary.Hash = fldLinuxBinaryHash.Text.Trim
		    binary.URL = fldLinuxBinaryURL.Text.Trim
		    
		    j.Value( Kaju.UpdateInformation.kLinuxBinaryName ) = binary.ToJSON
		  end if
		  
		  lbVersions.RowTag( LastVersionRow ) = j
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h21
		Private LastVersionRow As Integer = -1
	#tag EndProperty

	#tag Property, Flags = &h21
		Private Loading As Boolean
	#tag EndProperty

	#tag Property, Flags = &h21
		Private Platforms() As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private RSAPrivateKey As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private RSAPublicKey As String
	#tag EndProperty


#tag EndWindowCode

#tag Events lbVersions
	#tag Event
		Sub Change()
		  StoreFieldsToVersionRow
		  
		  dim row as integer = me.ListIndex
		  if row <> -1 and me.RowTag( row ) <> nil then
		    JSONToFields( me.RowTag( row ) )
		  else
		    ClearFields
		  end if
		  
		  LastVersionRow = row
		  
		  AdjustControls()
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnNew
	#tag Event
		Sub Action()
		  NewVersion
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnDelete
	#tag Event
		Sub Action()
		  DeleteVersion
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events fldVersion
	#tag Event
		Sub TextChange()
		  if lbVersions.ListIndex = -1 then
		    return
		  end if
		  
		  dim v as string = me.Text.Trim
		  if v = "" then
		    v = "(no version)"
		  end if
		  
		  lbVersions.Cell( lbVersions.ListIndex, 0 ) = v
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events fldReleaseNotes
	#tag Event
		Sub TextChange()
		  tmrUpdateReleaseNotesPreview.Mode = Timer.ModeSingle
		  tmrUpdateReleaseNotesPreview.Reset
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events hvReleaseNotesPreview
	#tag Event
		Function NewWindow() As HTMLViewer
		  return hvNewWindow
		End Function
	#tag EndEvent
	#tag Event
		Function CancelLoad(URL as String) As Boolean
		  return ( not self.Loading )
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events cbMacBinary
	#tag Event
		Sub Action()
		  fldMacBinaryHash.Visible = me.Value
		  fldMacBinaryURL.Visible = me.Value
		  lblMacBinaryHash.Visible = me.Value
		  lblMacBinaryURL.Visible = me.Value
		  
		  AdjustControls()
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events fldMacBinaryHash
	#tag Event
		Sub DropObject(obj As DragItem, action As Integer)
		  if obj.FolderItemAvailable then
		    dim f as FolderItem = obj.FolderItem
		    me.Text = Kaju.HashOfFile( f )
		  end if
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  me.AcceptFileDrop( "" )
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cbWindowsBinary
	#tag Event
		Sub Action()
		  fldWindowsBinaryHash.Visible = me.Value
		  fldWindowsBinaryURL.Visible = me.Value
		  lblWindowsBinaryHash.Visible = me.Value
		  lblWindowsBinaryURL.Visible = me.Value
		  
		  AdjustControls()
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events fldWindowsBinaryHash
	#tag Event
		Sub Open()
		  me.AcceptFileDrop( "" )
		End Sub
	#tag EndEvent
	#tag Event
		Sub DropObject(obj As DragItem, action As Integer)
		  if obj.FolderItemAvailable then
		    dim f as FolderItem = obj.FolderItem
		    me.Text = Kaju.HashOfFile( f )
		  end if
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cbLinuxBinary
	#tag Event
		Sub Action()
		  fldLinuxBinaryHash.Visible = me.Value
		  fldLinuxBinaryURL.Visible = me.Value
		  lblLinuxBinaryHash.Visible = me.Value
		  lblLinuxBinaryURL.Visible = me.Value
		  
		  AdjustControls()
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events fldLinuxBinaryHash
	#tag Event
		Sub Open()
		  me.AcceptFileDrop( "" )
		End Sub
	#tag EndEvent
	#tag Event
		Sub DropObject(obj As DragItem, action As Integer)
		  if obj.FolderItemAvailable then
		    dim f as FolderItem = obj.FolderItem
		    me.Text = Kaju.HashOfFile( f )
		  end if
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events fldImageURL
	#tag Event
		Sub TextChange()
		  tmrUpdateImagePreview.Mode = Timer.ModeSingle
		  tmrUpdateImagePreview.Reset
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events hvImagePreview
	#tag Event
		Function NewWindow() As HTMLViewer
		  return hvNewWindow
		End Function
	#tag EndEvent
	#tag Event
		Function CancelLoad(URL as String) As Boolean
		  return ( not self.Loading )
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events tmrUpdateReleaseNotesPreview
	#tag Event
		Sub Action()
		  self.Loading = true
		  
		  hvReleaseNotesPreview.LoadPage( fldReleaseNotes.Text, new FolderItem )
		  
		  self.Loading = false
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
#tag Events btnCopyPublicKey
	#tag Event
		Sub Action()
		  CreateRSAKeys()
		  
		  dim c as new Clipboard
		  c.Text = RSAPublicKey
		  c.Close
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events tmrUpdateImagePreview
	#tag Event
		Sub Action()
		  self.Loading = true
		  
		  hvImagePreview.LoadURL( fldImageURL.Text )
		  
		  self.Loading = false
		End Sub
	#tag EndEvent
#tag EndEvents
