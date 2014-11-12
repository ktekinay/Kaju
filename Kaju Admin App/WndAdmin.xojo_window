#tag Window
Begin Window WndAdmin
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   CloseButton     =   True
   Compatibility   =   ""
   Composite       =   False
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
      DataField       =   ""
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
      Top             =   13
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
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   251
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   4
      TabPanelIndex   =   0
      Text            =   "Version:"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   14
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   100
   End
End
#tag EndWindow

#tag WindowCode
	#tag Method, Flags = &h21
		Private Sub AddRows(info As Kaju.Information)
		  //
		  // Get all the UpdateInformation properties
		  //
		  dim ti as Introspection.TypeInfo = Introspection.GetType( info )
		  dim props() as Introspection.PropertyInfo = ti.GetProperties
		  
		  dim informationBaseTypeName as string
		  if true then
		    dim baseTI as Introspection.TypeInfo = GetTypeInfo( Kaju.Information )
		    informationBaseTypeName = baseTI.FullName
		  end if
		  
		  dim folders() as Introspection.PropertyInfo
		  
		  for each prop as Introspection.PropertyInfo in props
		    if prop.IsPublic and prop.CanRead and prop.CanWrite then
		      dim value as variant = prop.Value( info )
		      dim propInfo as Introspection.TypeInfo = prop.PropertyType
		      if propInfo.BaseType <> nil and propInfo.BaseType.FullName = informationBaseTypeName then
		        folders.Append prop
		        
		      elseif not propInfo.IsPrimitive then
		        //
		        // Skip it
		        //
		        
		      else
		        lbInfo.AddRow( prop.Name, value.StringValue )
		      end if
		      
		    end if
		  next
		  
		  //
		  // Add the folders last
		  //
		  
		  for each folder as Introspection.PropertyInfo in folders
		    lbInfo.AddFolder( folder.Name )
		    lbInfo.RowTag( lbInfo.LastIndex ) = folder
		  next
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ClearInfo()
		  fldVersion.Text = ""
		  lbInfo.DeleteAllRows
		  
		  fldVersion.Enabled = false
		  lbInfo.Enabled = false
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub DeleteVersion()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub LoadVersion(version As String, info As Kaju.UpdateInformation)
		  ClearInfo()
		  
		  lbInfo.Hierarchical = true
		  
		  fldVersion.Enabled = true
		  lbInfo.Enabled = true
		  
		  fldVersion.Text = version
		  dim ti as Introspection.TypeInfo = Introspection.GetType( info )
		  AddRows( ti )
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub NewVersion()
		  lbVersions.AddRow "1.0.0d1"
		  
		  lbVersions.RowTag( lbVersions.LastIndex ) = new Kaju.UpdateInformation
		  lbVersions.ListIndex = lbVersions.LastIndex
		  
		End Sub
	#tag EndMethod


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
