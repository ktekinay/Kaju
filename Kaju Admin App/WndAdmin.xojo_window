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
   Height          =   646
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
      Height          =   588
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
      Top             =   614
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
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   2
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "SmallSystem"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   614
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
      Enabled         =   True
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
      Height          =   497
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   251
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
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
      Top             =   102
      Underline       =   False
      Value           =   0
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
         Enabled         =   True
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
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
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
         Top             =   140
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   613
      End
      Begin HTMLViewer hvReleaseNotesPreview
         AutoDeactivate  =   True
         Enabled         =   True
         Height          =   200
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Left            =   271
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Renderer        =   0
         Scope           =   2
         TabIndex        =   1
         TabPanelIndex   =   1
         TabStop         =   True
         Top             =   388
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
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
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
         Top             =   362
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   100
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
      Enabled         =   True
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
   Begin Label Label1
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   2
      InitialParent   =   ""
      Italic          =   False
      Left            =   481
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
      Text            =   "Minimum Required Version:"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   53
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   200
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
      Enabled         =   True
      Format          =   ""
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      Italic          =   False
      Left            =   693
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
      TabIndex        =   9
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
   Begin CheckBox cbRequiresPayment
      AutoDeactivate  =   True
      Bold            =   False
      Caption         =   "Requires Payment"
      DataField       =   "RequiresPayment"
      DataSource      =   ""
      Enabled         =   True
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
   Begin Timer tmrUpdatePreview
      Height          =   32
      Index           =   -2147483648
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
End
#tag EndWindow

#tag WindowCode
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
		Private Sub ClearInfo()
		  'fldVersion.Text = ""
		  'lbInfo.DeleteAllRows
		  '
		  'fldVersion.Enabled = false
		  'lbInfo.Enabled = false
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub DeleteVersion()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub LoadVersion(version As String, info As Kaju.UpdateInformation)
		  'ClearInfo()
		  '
		  'lbInfo.Hierarchical = true
		  '
		  'fldVersion.Enabled = true
		  'lbInfo.Enabled = true
		  '
		  'fldVersion.Text = version
		  'dim ti as Introspection.TypeInfo = Introspection.GetType( info )
		  'AddRows( ti )
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub NewVersion()
		  lbVersions.AddRow "1.0.0d1"
		  
		  lbVersions.RowTag( lbVersions.LastIndex ) = new Kaju.UpdateInformation
		  lbVersions.ListIndex = lbVersions.LastIndex
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h21
		Private Loading As Boolean
	#tag EndProperty


#tag EndWindowCode

#tag Events lbVersions
	#tag Event
		Sub Change()
		  dim row as integer = me.ListIndex
		  if row <> -1 then
		    LoadVersion( me.Cell( row, 0 ), me.RowTag( row ) )
		  else
		    ClearInfo
		  end if
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
#tag Events fldReleaseNotes
	#tag Event
		Sub TextChange()
		  tmrUpdatePreview.Mode = Timer.ModeSingle
		  tmrUpdatePreview.Reset
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
#tag Events tmrUpdatePreview
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
