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
   MinHeight       =   680
   MinimizeButton  =   True
   MinWidth        =   932
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
      Bold            =   True
      ButtonStyle     =   "6"
      Cancel          =   False
      Caption         =   "+"
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
      TabIndex        =   5
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   640
      Underline       =   False
      Visible         =   True
      Width           =   20
   End
   Begin PushButton btnDelete
      AutoDeactivate  =   True
      Bold            =   True
      ButtonStyle     =   "6"
      Cancel          =   False
      Caption         =   "-"
      Default         =   False
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   39
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      Scope           =   2
      TabIndex        =   6
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   640
      Underline       =   False
      Visible         =   True
      Width           =   20
   End
   Begin TextFieldChanger fldVersion
      AcceptTabs      =   False
      Alignment       =   0
      AutoDeactivate  =   True
      AutomaticallyCheckSpelling=   False
      BackColor       =   &cFFFFFF00
      Bold            =   False
      Border          =   True
      CueText         =   ""
      DataField       =   "#KajuFile.kVersionName"
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
      TabIndex        =   12
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
      TabIndex        =   4
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
      Begin TextAreaChanger fldReleaseNotes
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
         TabIndex        =   11
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
      Begin CheckBoxChanger cbMacBinary
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
         TabIndex        =   1
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
      Begin TextFieldChanger fldMacBinaryURL
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
         LockRight       =   True
         LockTop         =   True
         Mask            =   ""
         Password        =   False
         ReadOnly        =   False
         Scope           =   2
         TabIndex        =   3
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
         TabIndex        =   12
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
         TabIndex        =   13
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
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   2
         Selectable      =   False
         TabIndex        =   10
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
      Begin CheckBoxChanger cbWindowsBinary
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
         TabIndex        =   4
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
      Begin TextFieldChanger fldWindowsBinaryURL
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
         LockRight       =   True
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
         Top             =   390
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
         TabIndex        =   15
         TabPanelIndex   =   2
         Text            =   "Hash:"
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
         TabIndex        =   16
         TabPanelIndex   =   2
         Text            =   "URL:"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   391
         Transparent     =   False
         Underline       =   False
         Visible         =   False
         Width           =   67
      End
      Begin CheckBoxChanger cbLinuxBinary
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
         TabIndex        =   8
         TabPanelIndex   =   2
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   438
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   100
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
         TabIndex        =   18
         TabPanelIndex   =   2
         Text            =   "Hash:"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   504
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
         TabIndex        =   19
         TabPanelIndex   =   2
         Text            =   "URL:"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   538
         Transparent     =   False
         Underline       =   False
         Visible         =   False
         Width           =   67
      End
      Begin TextFieldChanger fldImageURL
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
         TabIndex        =   1
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
         TabIndex        =   3
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
         Visible         =   True
         Width           =   67
      End
      Begin CheckBoxChanger cbImageUseTransparency
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
         TabIndex        =   0
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
         LockTop         =   True
         Renderer        =   0
         Scope           =   2
         TabIndex        =   2
         TabPanelIndex   =   3
         TabStop         =   True
         Top             =   224
         Visible         =   True
         Width           =   613
      End
      Begin TextFieldChanger fldMinRequiredVersion
         AcceptTabs      =   False
         Alignment       =   0
         AutoDeactivate  =   True
         AutomaticallyCheckSpelling=   False
         BackColor       =   &cFFFFFF00
         Bold            =   False
         Border          =   True
         CueText         =   ""
         DataField       =   "MinimumRequiredVersion"
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
         TabIndex        =   0
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
         TabIndex        =   20
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
      Begin BevelButton btnStyle
         AcceptFocus     =   True
         AutoDeactivate  =   True
         BackColor       =   &c00000000
         Bevel           =   0
         Bold            =   True
         ButtonType      =   0
         Caption         =   "B"
         CaptionAlign    =   3
         CaptionDelta    =   0
         CaptionPlacement=   1
         Enabled         =   True
         HasBackColor    =   False
         HasMenu         =   0
         Height          =   22
         HelpTag         =   "Bold"
         Icon            =   0
         IconAlign       =   0
         IconDX          =   0
         IconDY          =   0
         Index           =   0
         InitialParent   =   "TabPanel1"
         Italic          =   False
         Left            =   802
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         MenuValue       =   0
         Scope           =   0
         TabIndex        =   7
         TabPanelIndex   =   1
         TabStop         =   True
         TextColor       =   &c00000000
         TextFont        =   "SmallSystem"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   136
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   26
      End
      Begin BevelButton btnStyle
         AcceptFocus     =   True
         AutoDeactivate  =   True
         BackColor       =   &c00000000
         Bevel           =   0
         Bold            =   False
         ButtonType      =   0
         Caption         =   "I"
         CaptionAlign    =   3
         CaptionDelta    =   0
         CaptionPlacement=   1
         Enabled         =   True
         HasBackColor    =   False
         HasMenu         =   0
         Height          =   22
         HelpTag         =   "Italic"
         Icon            =   0
         IconAlign       =   0
         IconDX          =   0
         IconDY          =   0
         Index           =   1
         InitialParent   =   "TabPanel1"
         Italic          =   True
         Left            =   830
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         MenuValue       =   0
         Scope           =   0
         TabIndex        =   8
         TabPanelIndex   =   1
         TabStop         =   True
         TextColor       =   &c00000000
         TextFont        =   "SmallSystem"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   136
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   26
      End
      Begin BevelButton btnStyle
         AcceptFocus     =   True
         AutoDeactivate  =   True
         BackColor       =   &c00000000
         Bevel           =   0
         Bold            =   False
         ButtonType      =   0
         Caption         =   "U"
         CaptionAlign    =   3
         CaptionDelta    =   0
         CaptionPlacement=   1
         Enabled         =   True
         HasBackColor    =   False
         HasMenu         =   0
         Height          =   22
         HelpTag         =   "Underline"
         Icon            =   0
         IconAlign       =   0
         IconDX          =   0
         IconDY          =   0
         Index           =   2
         InitialParent   =   "TabPanel1"
         Italic          =   False
         Left            =   858
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         MenuValue       =   0
         Scope           =   0
         TabIndex        =   9
         TabPanelIndex   =   1
         TabStop         =   True
         TextColor       =   &c00000000
         TextFont        =   "SmallSystem"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   136
         Underline       =   True
         Value           =   False
         Visible         =   True
         Width           =   26
      End
      Begin BevelButton btnBreak
         AcceptFocus     =   True
         AutoDeactivate  =   True
         BackColor       =   &c00000000
         Bevel           =   0
         Bold            =   False
         ButtonType      =   0
         Caption         =   "<br />"
         CaptionAlign    =   3
         CaptionDelta    =   0
         CaptionPlacement=   1
         Enabled         =   True
         HasBackColor    =   False
         HasMenu         =   0
         Height          =   22
         HelpTag         =   "Insert break"
         Icon            =   0
         IconAlign       =   0
         IconDX          =   0
         IconDY          =   0
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Italic          =   False
         Left            =   601
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         MenuValue       =   0
         Scope           =   0
         TabIndex        =   2
         TabPanelIndex   =   1
         TabStop         =   True
         TextColor       =   &c00000000
         TextFont        =   "SmallSystem"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   136
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   50
      End
      Begin BevelButton btnStyle
         AcceptFocus     =   True
         AutoDeactivate  =   True
         BackColor       =   &c00000000
         Bevel           =   0
         Bold            =   False
         ButtonType      =   0
         Caption         =   "p"
         CaptionAlign    =   3
         CaptionDelta    =   0
         CaptionPlacement=   1
         Enabled         =   True
         HasBackColor    =   False
         HasMenu         =   0
         Height          =   22
         HelpTag         =   "Create a paragraph tag"
         Icon            =   0
         IconAlign       =   0
         IconDX          =   0
         IconDY          =   0
         Index           =   3
         InitialParent   =   "TabPanel1"
         Italic          =   False
         Left            =   653
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         MenuValue       =   0
         Scope           =   0
         TabIndex        =   3
         TabPanelIndex   =   1
         TabStop         =   True
         TextColor       =   &c00000000
         TextFont        =   "SmallSystem"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   136
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   26
      End
      Begin TextFieldChanger fldMacBinaryHash
         AcceptTabs      =   False
         Alignment       =   0
         AutoDeactivate  =   True
         AutomaticallyCheckSpelling=   False
         BackColor       =   &cFFFFFF00
         Bold            =   False
         Border          =   True
         CueText         =   "Drop the Mac Zip file here to calculate the hash"
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
         LockRight       =   True
         LockTop         =   True
         Mask            =   ""
         Password        =   False
         ReadOnly        =   True
         Scope           =   2
         TabIndex        =   22
         TabPanelIndex   =   2
         TabStop         =   False
         Text            =   ""
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   223
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   False
         Width           =   350
      End
      Begin TextFieldChanger fldWindowsBinaryHash
         AcceptTabs      =   False
         Alignment       =   0
         AutoDeactivate  =   True
         AutomaticallyCheckSpelling=   False
         BackColor       =   &cFFFFFF00
         Bold            =   False
         Border          =   True
         CueText         =   "Drop the Windows Zip file here to calculate the hash"
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
         LockRight       =   True
         LockTop         =   True
         Mask            =   ""
         Password        =   False
         ReadOnly        =   True
         Scope           =   2
         TabIndex        =   23
         TabPanelIndex   =   2
         TabStop         =   False
         Text            =   ""
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   356
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   False
         Width           =   350
      End
      Begin TextFieldChanger fldLinuxBinaryURL
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
         LockRight       =   True
         LockTop         =   True
         Mask            =   ""
         Password        =   False
         ReadOnly        =   False
         Scope           =   2
         TabIndex        =   11
         TabPanelIndex   =   2
         TabStop         =   True
         Text            =   ""
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   537
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   False
         Width           =   470
      End
      Begin TextFieldChanger fldWindowsExecutable
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
         LockRight       =   True
         LockTop         =   True
         Mask            =   ""
         Password        =   False
         ReadOnly        =   False
         Scope           =   2
         TabIndex        =   5
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
      Begin Label lblWindowsExecutable
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
         Text            =   "Executable:"
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
      Begin TextFieldChanger fldLinuxExecutable
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
         LockRight       =   True
         LockTop         =   True
         Mask            =   ""
         Password        =   False
         ReadOnly        =   False
         Scope           =   2
         TabIndex        =   9
         TabPanelIndex   =   2
         TabStop         =   True
         Text            =   ""
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   470
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   False
         Width           =   470
      End
      Begin Label lblLinuxExecutable
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
         TabIndex        =   17
         TabPanelIndex   =   2
         Text            =   "Executable:"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   471
         Transparent     =   False
         Underline       =   False
         Visible         =   False
         Width           =   67
      End
      Begin TextFieldChanger fldLinuxBinaryHash
         AcceptTabs      =   False
         Alignment       =   0
         AutoDeactivate  =   True
         AutomaticallyCheckSpelling=   False
         BackColor       =   &cFFFFFF00
         Bold            =   False
         Border          =   True
         CueText         =   "Drop the Linux Zip file here to calculate the hash"
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
         LockRight       =   True
         LockTop         =   True
         Mask            =   ""
         Password        =   False
         ReadOnly        =   True
         Scope           =   2
         TabIndex        =   24
         TabPanelIndex   =   2
         TabStop         =   False
         Text            =   ""
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   503
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   False
         Width           =   350
      End
      Begin BevelButton btnList
         AcceptFocus     =   True
         AutoDeactivate  =   True
         BackColor       =   &c00000000
         Bevel           =   0
         Bold            =   False
         ButtonType      =   0
         Caption         =   "ul"
         CaptionAlign    =   3
         CaptionDelta    =   0
         CaptionPlacement=   1
         Enabled         =   True
         HasBackColor    =   False
         HasMenu         =   0
         Height          =   22
         HelpTag         =   "Unordered list"
         Icon            =   0
         IconAlign       =   0
         IconDX          =   0
         IconDY          =   0
         Index           =   0
         InitialParent   =   "TabPanel1"
         Italic          =   False
         Left            =   699
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         MenuValue       =   0
         Scope           =   0
         TabIndex        =   4
         TabPanelIndex   =   1
         TabStop         =   True
         TextColor       =   &c00000000
         TextFont        =   "SmallSystem"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   136
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   26
      End
      Begin BevelButton btnList
         AcceptFocus     =   True
         AutoDeactivate  =   True
         BackColor       =   &c00000000
         Bevel           =   0
         Bold            =   False
         ButtonType      =   0
         Caption         =   "ol"
         CaptionAlign    =   3
         CaptionDelta    =   0
         CaptionPlacement=   1
         Enabled         =   True
         HasBackColor    =   False
         HasMenu         =   0
         Height          =   22
         HelpTag         =   "Ordered list"
         Icon            =   0
         IconAlign       =   0
         IconDX          =   0
         IconDY          =   0
         Index           =   1
         InitialParent   =   "TabPanel1"
         Italic          =   False
         Left            =   727
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         MenuValue       =   0
         Scope           =   0
         TabIndex        =   5
         TabPanelIndex   =   1
         TabStop         =   True
         TextColor       =   &c00000000
         TextFont        =   "SmallSystem"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   136
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   26
      End
      Begin BevelButton btnStyle
         AcceptFocus     =   True
         AutoDeactivate  =   True
         BackColor       =   &c00000000
         Bevel           =   0
         Bold            =   False
         ButtonType      =   0
         Caption         =   "li"
         CaptionAlign    =   3
         CaptionDelta    =   0
         CaptionPlacement=   1
         Enabled         =   True
         HasBackColor    =   False
         HasMenu         =   0
         Height          =   22
         HelpTag         =   "List item"
         Icon            =   0
         IconAlign       =   0
         IconDX          =   0
         IconDY          =   0
         Index           =   6
         InitialParent   =   "TabPanel1"
         Italic          =   False
         Left            =   755
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         MenuValue       =   0
         Scope           =   0
         TabIndex        =   6
         TabPanelIndex   =   1
         TabStop         =   True
         TextColor       =   &c00000000
         TextFont        =   "SmallSystem"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   136
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   26
      End
      Begin PushButton btnMacHashFromURL
         AutoDeactivate  =   True
         Bold            =   False
         ButtonStyle     =   "0"
         Cancel          =   False
         Caption         =   "From URL"
         Default         =   False
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Italic          =   False
         Left            =   804
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         Scope           =   2
         TabIndex        =   2
         TabPanelIndex   =   2
         TabStop         =   True
         TextFont        =   "SmallSystem"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   223
         Underline       =   False
         Visible         =   False
         Width           =   80
      End
      Begin PushButton btnLinuxHashFromURL
         AutoDeactivate  =   True
         Bold            =   False
         ButtonStyle     =   "0"
         Cancel          =   False
         Caption         =   "From URL"
         Default         =   False
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Italic          =   False
         Left            =   804
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         Scope           =   2
         TabIndex        =   10
         TabPanelIndex   =   2
         TabStop         =   True
         TextFont        =   "SmallSystem"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   503
         Underline       =   False
         Visible         =   False
         Width           =   80
      End
      Begin PushButton btnWindowsHashFromURL
         AutoDeactivate  =   True
         Bold            =   False
         ButtonStyle     =   "0"
         Cancel          =   False
         Caption         =   "From URL"
         Default         =   False
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Italic          =   False
         Left            =   804
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         Scope           =   2
         TabIndex        =   6
         TabPanelIndex   =   2
         TabStop         =   True
         TextFont        =   "SmallSystem"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   358
         Underline       =   False
         Visible         =   False
         Width           =   80
      End
      Begin Label Label2
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
         Left            =   271
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Multiline       =   False
         Scope           =   2
         Selectable      =   False
         TabIndex        =   21
         TabPanelIndex   =   2
         Text            =   "Use ‘$VERSION$’ in the URL to insert the version on export"
         TextAlign       =   1
         TextColor       =   &c00000000
         TextFont        =   "SmallSystem"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   588
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   613
      End
   End
   Begin TextFieldChanger fldAppName
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
      TabIndex        =   1
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
      TabIndex        =   11
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
   Begin CheckBoxChanger cbRequiresPayment
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
      TabIndex        =   2
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
      TabIndex        =   15
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
      Left            =   251
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      Scope           =   2
      TabIndex        =   8
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
      Scope           =   2
      Selectable      =   False
      TabIndex        =   14
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
      TabIndex        =   13
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
   Begin PushButton btnExport
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   False
      Caption         =   "Export..."
      Default         =   False
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   819
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      Scope           =   2
      TabIndex        =   10
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   639
      Underline       =   False
      Visible         =   True
      Width           =   85
   End
   Begin PushButton btnDuplicate
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   False
      Caption         =   "Dupe"
      Default         =   False
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   158
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      Scope           =   2
      TabIndex        =   7
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "SmallSystem"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   641
      Underline       =   False
      Visible         =   True
      Width           =   65
   End
   Begin BevelButton btnPreview
      AcceptFocus     =   True
      AutoDeactivate  =   True
      BackColor       =   &c00000000
      Bevel           =   0
      Bold            =   False
      ButtonType      =   0
      Caption         =   "Preview..."
      CaptionAlign    =   3
      CaptionDelta    =   0
      CaptionPlacement=   1
      Enabled         =   True
      HasBackColor    =   False
      HasMenu         =   1
      Height          =   22
      HelpTag         =   ""
      Icon            =   0
      IconAlign       =   0
      IconDX          =   0
      IconDY          =   0
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   684
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      MenuValue       =   -1
      Scope           =   0
      TabIndex        =   9
      TabPanelIndex   =   0
      TabStop         =   True
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   639
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   113
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Activate()
		  UpdateWindowTitle
		End Sub
	#tag EndEvent

	#tag Event
		Function CancelClose(appQuitting as Boolean) As Boolean
		  dim r as Boolean = false
		  
		  if self.ContentsChanged then
		    dim dlg as new MessageDialog
		    dlg.Message = "This document has been modified. Save before closing?"
		    dlg.ActionButton.Caption = "&Save"
		    dlg.ActionButton.Visible = true
		    dlg.CancelButton.Visible = true
		    dlg.AlternateActionButton.Caption = "&Don't Save"
		    dlg.AlternateActionButton.Visible = true
		    
		    dim btn as MessageDialogButton = dlg.ShowModalWithin( self )
		    if btn is dlg.CancelButton then
		      r = true
		    elseif btn = dlg.AlternateActionButton then
		      r = false
		    else
		      r = not( DoSave() )
		    end if
		  end if
		  
		  return r
		  
		  #pragma unused appQuitting
		End Function
	#tag EndEvent

	#tag Event
		Sub Open()
		  AdjustControls()
		End Sub
	#tag EndEvent


	#tag MenuHandler
		Function FileClose() As Boolean Handles FileClose.Action
			self.Close
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function FileSave() As Boolean Handles FileSave.Action
			call DoSave()
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function FileSaveAs() As Boolean Handles FileSaveAs.Action
			call DoSaveAs()
			Return True
			
		End Function
	#tag EndMenuHandler


	#tag Method, Flags = &h21
		Private Sub AdjustControls()
		  if self.Loading then
		    return
		  end if
		  
		  dim trueValue as boolean = lbVersions.ListIndex <> -1
		  
		  dim lastIndex as integer = ControlCount - 1
		  for i as integer = 0 to lastIndex
		    
		    dim c as Control = self.Control( i )
		    dim doIt as boolean
		    if ControlDataField( c ) <> "" then
		      doIt = true
		    elseif c IsA btnStyle then
		      doIt = true
		    elseif c IsA btnList then
		      doIt = true
		    end if
		    
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
		  
		  btnDelete.Enabled = trueValue
		  btnDuplicate.Enabled = trueValue
		  
		  btnBreak.Enabled = trueValue
		  
		  //
		  // HashFromURL buttons
		  //
		  if cbMacBinary.Enabled and cbMacBinary.Value and fldMacBinaryURL.Text.Trim <> "" then
		    btnMacHashFromURL.Enabled = trueValue
		  else
		    btnMacHashFromURL.Enabled = false
		  end if
		  
		  if cbWindowsBinary.Enabled and cbWindowsBinary.Value and fldWindowsBinaryURL.Text.Trim <> "" then
		    btnWindowsHashFromURL.Enabled = trueValue
		  else
		    btnWindowsHashFromURL.Enabled = false
		  end if
		  
		  if cbLinuxBinary.Enabled and cbLinuxBinary.Value and fldLinuxBinaryURL.Text.Trim <> "" then
		    btnLinuxHashFromURL.Enabled = trueValue
		  else
		    btnLinuxHashFromURL.Enabled = false
		  end if
		  
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
		  
		  UpdateWindowTitle
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ApplyStyle(tag As String, insertEOL As Boolean = False)
		  dim eol as string = EndOfLine
		  eol = if( insertEOL, eol, "" )
		  
		  tag = tag.Lowercase
		  
		  dim openTag as string = "<" + tag + ">" + eol
		  dim closeTag as string = eol + "</" + tag + ">"
		  
		  dim s as string = fldReleaseNotes.SelText
		  dim selStart as integer = fldReleaseNotes.SelStart
		  
		  fldReleaseNotes.SelText = openTag + s + closeTag
		  if s = "" then // No selection so position the cursor
		    fldReleaseNotes.SelStart = selStart + openTag.Len
		  end if
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ClearFields()
		  dim savedDirty as boolean = self.ContentsChanged
		  
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
		  self.ContentsChanged = savedDirty
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
		    dim sValue as string = value.StringValue.DefineEncoding( Encodings.UTF8 )
		    fld.Text = sValue
		    
		  case IsA CheckBox
		    dim cb as CheckBox = CheckBox( c )
		    cb.Value = value.BooleanValue
		    
		  else
		    raise new KeyNotFoundException
		    
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub DeleteVersion()
		  dim curIndex as integer = lbVersions.ListIndex
		  if curIndex = -1 then
		    return
		  end if
		  
		  StoreFieldsToVersionRow
		  
		  dim version as Kaju.UpdateInformation = lbVersions.RowTag( curIndex )
		  
		  dim dlg as new MessageDialog
		  dlg.Message = "Really delete version " + version.Version + "?"
		  dlg.Explanation = "This cannot be undone."
		  dlg.ActionButton.Caption = "&Delete"
		  dlg.CancelButton.Visible = true
		  dim btn as MessageDialogButton = dlg.ShowModalWithin( self )
		  if btn is dlg.CancelButton then
		    return
		  end if
		  
		  lbVersions.ListIndex = -1
		  lbVersions.RemoveRow( curIndex )
		  
		  MyKajuFile.KajuData.Remove MyKajuFile.KajuData.IndexOf( version )
		  
		  if curIndex > 0 then
		    curIndex = curIndex - 1
		  end if
		  
		  if curIndex < lbVersions.ListCount then
		    lbVersions.ListIndex = curIndex
		  end if
		  
		  ContentsChanged = true
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function DoSave() As Boolean
		  StoreFieldsToVersionRow()
		  
		  dim f as FolderItem = Document
		  if f is nil then
		    return DoSaveAs()
		  end if
		  
		  dim savedContentsChanged as boolean = self.ContentsChanged
		  
		  dim r as boolean
		  MyKajuFile.SaveTo( f )
		  r = true
		  ContentsChanged = false
		  
		  Exception err as IOException
		    self.ContentsChanged = savedContentsChanged
		    MsgBox "Save failed!"
		    
		  Finally
		    UpdateWindowTitle
		    return r
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function DoSaveAs() As Boolean
		  dim ext as string = FileTypes1.KajuDocument.Extensions
		  
		  dim dlg as new SaveAsDialog
		  dlg.PromptText = "Save the Kaju document as:"
		  dlg.Filter = FileTypes1.KajuDocument
		  dlg.SuggestedFileName = "New Version Line" + ext
		  
		  dim f as FolderItem = dlg.ShowModalWithin( self )
		  
		  dim r as boolean
		  if f is nil then
		    r = false
		    
		  elseif f.Directory then
		    MsgBox "You chose a folder."
		    r = false
		    
		  else
		    //
		    // Adjust the name if needed
		    //
		    if not f.Exists then
		      if f.Name.Right( ext.Len ) <> ext then
		        f.Name = f.Name + ext
		      end if
		    end if
		    
		    Document = f
		    r = DoSave()
		  end if
		  
		  UpdateWindowTitle
		  return r
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub DuplicateVersion()
		  dim curIndex as integer = lbVersions.ListIndex
		  if curIndex = -1 then
		    return
		  end if
		  
		  StoreFieldsToVersionRow()
		  
		  dim tag as Variant = lbVersions.RowTag( curIndex )
		  dim listing as string = lbVersions.Cell( curIndex, 0 )
		  dim newIndex as integer = curIndex + 1
		  lbVersions.InsertRow( newIndex, listing )
		  lbVersions.RowTag( newIndex ) = tag
		  lbVersions.ListIndex = newIndex
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub HashFromURL(url As String, version As String, hashField As TextField)
		  url = url.Trim
		  url = KajuFile.InsertVersion( url, version )
		  
		  if url = "" then
		    return
		  end if
		  
		  hashField.Text = ""
		  
		  dim http as new Kaju.HTTPSSocket
		  url = http.GetRedirectAddress( url, 5 )
		  
		  dim file as FolderItem = GetTemporaryFolderItem
		  dim r as boolean = http.Get( url, file, 30 )
		  if not r or http.LastErrorCode <> 0 then
		    
		    MsgBox "Could not get the executable from that url: " + str( http.LastErrorCode )
		    
		  else
		    
		    dim hash as string = Kaju.HashOfFile( file )
		    hashField.Text = hash
		    
		  end if
		  
		  Exception err As RuntimeException
		    MsgBox err.Message
		    
		  Finally
		    if file <> nil and file.Exists then
		      file.Delete
		    end if
		    
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function IsDataValid() As Boolean
		  StoreFieldsToVersionRow()
		  
		  dim r as boolean = true // Assume it's fine
		  
		  if lbVersions.ListCount = 0 then
		    return r
		  end if
		  
		  dim msg as string
		  dim lastRow as integer = lbVersions.ListCount - 1
		  for row as integer = 0 to lastRow
		    dim u as Kaju.UpdateInformation = lbVersions.RowTag( row )
		    if not u.IsValid then
		      r = false
		      msg = u.InvalidReason
		      lbVersions.ListIndex = row
		      exit for row
		    end if
		  next
		  
		  if not r then
		    MsgBox msg
		  end if
		  
		  return r
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function MyKajuFile() As KajuFile
		  if mMyKajuFile is nil then
		    mMyKajuFile = new KajuFile
		  end if
		  
		  return mMyKajuFile
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub NewVersion()
		  StoreFieldsToVersionRow()
		  
		  lbVersions.AddRow "1.0.0d1"
		  dim version as new Kaju.UpdateInformation
		  version.Version = lbVersions.Cell( lbVersions.LastIndex, 0 )
		  
		  dim prevIndex as integer = LastVersionRow
		  if prevIndex <> -1 and prevIndex < lbVersions.ListCount then
		    dim prevItem as Kaju.UpdateInformation = lbVersions.RowTag( prevIndex )
		    if prevItem <> nil then
		      version.AppName = prevItem.AppName
		    end if
		  end if
		  
		  MyKajuFile.KajuData.Append version
		  
		  lbVersions.RowTag( lbVersions.LastIndex ) = version
		  lbVersions.ListIndex = lbVersions.LastIndex
		  self.ContentsChanged = true
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub OpenDocument(f As FolderItem)
		  if f is nil or not f.Exists or f.Directory then
		    raise new NilObjectException
		  end if
		  MyKajuFile.Load f
		  
		  dim versions() as Kaju.UpdateInformation = MyKajuFile.KajuData
		  for i as integer = 0 to versions.Ubound
		    dim version as Kaju.UpdateInformation = versions( i )
		    lbVersions.AddRow version.Version
		    lbVersions.RowTag( lbVersions.LastIndex ) = version
		  next i
		  
		  if lbVersions.ListCount <> 0 then
		    lbVersions.ListIndex = 0
		  end if
		  
		  Document = f
		  self.ContentsChanged = false
		  
		  AdjustControls
		  
		  Exception err as RuntimeException
		    select case err
		    case IsA EndException, IsA ThreadEndException
		      //
		      // Pass it on
		      //
		      raise err
		      
		    case else
		      MsgBox "Could not open document."
		      
		      self.Close
		      return
		    end select
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub StoreFieldsToVersionRow()
		  if LastVersionRow = -1 or LastVersionRow >= lbVersions.ListCount then
		    return
		  end if
		  
		  dim version as Kaju.UpdateInformation = lbVersions.RowTag( LastVersionRow )
		  
		  //
		  // Gather the textfield data first
		  //
		  
		  dim lastIndex as integer = ControlCount - 1
		  for i as integer = 0 to lastIndex
		    dim c as Control = self.Control( i )
		    
		    dim fieldName as string = ControlDataField( c )
		    if fieldName <> "" then
		      dim value as Variant = ControlValue( c )
		      version.SetByName( fieldName ) = value
		    end if
		    
		  next
		  
		  //
		  // Binaries
		  //
		  if cbMacBinary.Value then
		    dim binary as new Kaju.BinaryInformation( false )
		    binary.Hash = fldMacBinaryHash.Text.Trim
		    binary.URL = fldMacBinaryURL.Text.Trim
		    
		    version.MacBinary = binary
		  else
		    version.MacBinary = nil
		  end if
		  
		  if cbWindowsBinary.Value then
		    dim binary as new Kaju.BinaryInformation( true )
		    binary.ExecutableName = fldWindowsExecutable.Text.Trim
		    binary.Hash = fldWindowsBinaryHash.Text.Trim
		    binary.URL = fldWindowsBinaryURL.Text.Trim
		    
		    version.WindowsBinary = binary
		  else
		    version.WindowsBinary = nil
		  end if
		  
		  if cbLinuxBinary.Value then
		    dim binary as new Kaju.BinaryInformation( true )
		    binary.ExecutableName = fldLinuxExecutable.Text.Trim
		    binary.Hash = fldLinuxBinaryHash.Text.Trim
		    binary.URL = fldLinuxBinaryURL.Text.Trim
		    
		    version.LinuxBinary = binary
		  else
		    version.LinuxBinary = nil
		  end if
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub UpdateWindowTitle()
		  dim f as FolderItem = Document
		  if f is nil then
		    self.Title = "Untitled"
		  else
		    dim t as string = f.Name
		    dim ext as string = FileTypes1.KajuDocument.Extensions
		    
		    if t.Right( ext.Len ) = ext then
		      t = t.Left( t.Len - ext.Len )
		    end if
		    
		    self.Title = t
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub VersionToFields(version As Kaju.UpdateInformation)
		  //
		  // Handle the named controls first
		  //
		  
		  dim savedDirty as boolean = self.ContentsChanged
		  
		  ClearFields()
		  
		  self.Loading = true
		  
		  dim lastIndex as integer = ControlCount - 1
		  for i as integer = 0 to lastIndex
		    dim c as Control = self.Control( i )
		    
		    dim fieldName as string = ControlDataField( c )
		    if fieldName <> "" then
		      try
		        ControlValue( c ) = version.GetByName( fieldName )
		      catch err as KeyNotFoundException
		        ControlValue( c ) = nil
		      end try
		    end if
		    
		  next
		  
		  //
		  // Binaries
		  //
		  
		  if version.MacBinary isa Kaju.BinaryInformation then
		    cbMacBinary.Value = true
		    dim binary as Kaju.BinaryInformation = version.MacBinary
		    fldMacBinaryHash.Text = binary.Hash
		    fldMacBinaryURL.Text = binary.URL
		  end if
		  
		  if version.WindowsBinary isa Kaju.BinaryInformation then
		    cbWindowsBinary.Value = true
		    dim binary as Kaju.BinaryInformation = version.WindowsBinary
		    fldWindowsExecutable.Text = binary.ExecutableName
		    fldWindowsBinaryHash.Text = binary.Hash
		    fldWindowsBinaryURL.Text = binary.URL
		  end if
		  
		  if version.LinuxBinary isa Kaju.BinaryInformation then
		    cbLinuxBinary.Value = true
		    dim binary as Kaju.BinaryInformation = version.LinuxBinary
		    fldLinuxExecutable.Text = binary.ExecutableName
		    fldLinuxBinaryHash.Text = binary.Hash
		    fldLinuxBinaryURL.Text = binary.URL
		  end if
		  
		  self.Loading = false
		  
		  AdjustControls()
		  self.ContentsChanged = savedDirty
		End Sub
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  if mDocument is nil then
			    return nil
			  else
			    return mDocument.Resolve
			  end if
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mDocument = value
			End Set
		#tag EndSetter
		Document As FolderItem
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private LastVersionRow As Integer = -1
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return mLoading > 0
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if value then
			    mLoading = mLoading + 1
			  else
			    mLoading = mLoading - 1
			    if mLoading < 0 then
			      mLoading = 0
			    end if
			  end if
			  
			End Set
		#tag EndSetter
		Loading As Boolean
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private mDocument As FolderItemAlias
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mLoading As Integer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mMyKajuFile As KajuFile
	#tag EndProperty

	#tag Property, Flags = &h21
		Private Platforms() As String
	#tag EndProperty


#tag EndWindowCode

#tag Events lbVersions
	#tag Event
		Sub Change()
		  StoreFieldsToVersionRow
		  
		  dim row as integer = me.ListIndex
		  if row <> -1 and me.RowTag( row ) <> nil then
		    VersionToFields( me.RowTag( row ) )
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
		  
		  #pragma unused URL
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
		  btnMacHashFromURL.Visible = me.Value
		  
		  AdjustControls()
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events fldMacBinaryURL
	#tag Event
		Sub TextChange()
		  AdjustControls()
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cbWindowsBinary
	#tag Event
		Sub Action()
		  fldWindowsExecutable.Visible = me.Value
		  fldWindowsBinaryHash.Visible = me.Value
		  fldWindowsBinaryURL.Visible = me.Value
		  lblWindowsExecutable.Visible = me.Value
		  lblWindowsBinaryHash.Visible = me.Value
		  lblWindowsBinaryURL.Visible = me.Value
		  btnWindowsHashFromURL.Visible = me.Value
		  
		  AdjustControls()
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events fldWindowsBinaryURL
	#tag Event
		Sub TextChange()
		  AdjustControls()
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cbLinuxBinary
	#tag Event
		Sub Action()
		  fldLinuxExecutable.Visible = me.Value
		  fldLinuxBinaryHash.Visible = me.Value
		  fldLinuxBinaryURL.Visible = me.Value
		  lblLinuxExecutable.Visible = me.Value
		  lblLinuxBinaryHash.Visible = me.Value
		  lblLinuxBinaryURL.Visible = me.Value
		  btnLinuxHashFromURL.Visible = me.Value
		  
		  AdjustControls()
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
		  
		  #pragma unused URL
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events btnStyle
	#tag Event
		Sub Action(index as Integer)
		  dim tag as string = me.Caption
		  ApplyStyle( tag )
		  
		  #pragma unused index
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnBreak
	#tag Event
		Sub Action()
		  fldReleaseNotes.SelText = "<br />" + EndOfLine
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
		  
		  #pragma unused action
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  me.AcceptFileDrop( FileTypes1.ApplicationZip )
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events fldWindowsBinaryHash
	#tag Event
		Sub Open()
		  me.AcceptFileDrop( FileTypes1.ApplicationZip )
		End Sub
	#tag EndEvent
	#tag Event
		Sub DropObject(obj As DragItem, action As Integer)
		  if obj.FolderItemAvailable then
		    dim f as FolderItem = obj.FolderItem
		    me.Text = Kaju.HashOfFile( f )
		  end if
		  
		  #pragma unused action
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events fldLinuxBinaryURL
	#tag Event
		Sub TextChange()
		  AdjustControls()
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events fldLinuxBinaryHash
	#tag Event
		Sub Open()
		  me.AcceptFileDrop( FileTypes1.ApplicationZip )
		End Sub
	#tag EndEvent
	#tag Event
		Sub DropObject(obj As DragItem, action As Integer)
		  if obj.FolderItemAvailable then
		    dim f as FolderItem = obj.FolderItem
		    me.Text = Kaju.HashOfFile( f )
		  end if
		  
		  #pragma unused action
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnList
	#tag Event
		Sub Action(index as Integer)
		  dim tag as string = me.Caption
		  ApplyStyle( tag, true )
		  
		  #pragma unused index
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnMacHashFromURL
	#tag Event
		Sub Action()
		  HashFromURL( fldMacBinaryURL.Text, fldVersion.Text.Trim, fldMacBinaryHash )
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnLinuxHashFromURL
	#tag Event
		Sub Action()
		  HashFromURL( fldLinuxBinaryURL.Text, fldVersion.Text.Trim, fldLinuxBinaryHash )
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnWindowsHashFromURL
	#tag Event
		Sub Action()
		  HashFromURL( fldWindowsBinaryURL.Text, fldVersion.Text.Trim, fldWindowsBinaryHash )
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events tmrUpdateReleaseNotesPreview
	#tag Event
		Sub Action()
		  self.Loading = true
		  
		  hvReleaseNotesPreview.LoadPage( ControlValue( fldReleaseNotes ).StringValue, new FolderItem )
		  
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
		  
		  dim c as new Clipboard
		  c.Text = MyKajuFile.PublicKey
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
#tag Events btnExport
	#tag Event
		Sub Action()
		  if not IsDataValid() then
		    return
		  end if
		  
		  dim dlg as new SaveAsDialog
		  dlg.PromptText = "Export the file that will be served to your app through your web site:"
		  dlg.ActionButtonCaption = "Export"
		  dlg.SuggestedFileName = MyKajuFile.ExportFilename
		  
		  dim f as FolderItem = dlg.ShowModalWithin( self )
		  if f is nil then
		    return
		  end if
		  
		  MyKajuFile.ExportTo( f )
		  
		  Exception err As RuntimeException
		    MsgBox "Could not export data."
		    
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnDuplicate
	#tag Event
		Sub Action()
		  DuplicateVersion
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnPreview
	#tag Event
		Sub Open()
		  me.AddRow "Development"
		  me.AddRow "Alpha"
		  me.AddRow "Beta"
		  me.AddRow "Final"
		  
		  me.MenuValue = -1
		End Sub
	#tag EndEvent
	#tag Event
		Sub Action()
		  if me.MenuValue = -1 then
		    return
		  end if
		  
		  dim uc as new Kaju.UpdateChecker( App.PrefFolder )
		  uc.AllowedStage = me.MenuValue
		  dim s as string = MyKajuFile.DataToJSON.ToString
		  uc.TestUpdate( s )
		  
		  me.MenuValue = -1
		End Sub
	#tag EndEvent
#tag EndEvents
#tag ViewBehavior
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
		Name="Loading"
		Group="Behavior"
		Type="Boolean"
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
