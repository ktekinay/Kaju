#tag Window
Begin ContainerControl BinaryInformationControl
   AcceptFocus     =   False
   AcceptTabs      =   True
   AutoDeactivate  =   True
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   Compatibility   =   ""
   DoubleBuffer    =   False
   Enabled         =   True
   EraseBackground =   True
   HasBackColor    =   False
   Height          =   130
   HelpTag         =   ""
   InitialParent   =   ""
   Left            =   0
   LockBottom      =   False
   LockLeft        =   True
   LockRight       =   True
   LockTop         =   True
   TabIndex        =   0
   TabPanelIndex   =   0
   TabStop         =   True
   Top             =   0
   Transparent     =   True
   UseFocusRing    =   False
   Visible         =   True
   Width           =   630
   Begin PushButton btnHashFromURL
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
      InitialParent   =   ""
      Italic          =   False
      Left            =   539
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Scope           =   2
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "SmallSystem"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   66
      Transparent     =   True
      Underline       =   False
      Visible         =   False
      Width           =   80
   End
   Begin CheckBoxChanger cbUseBinary
      AutoDeactivate  =   True
      Bold            =   False
      Caption         =   "Use"
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   False
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   7
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   2
      State           =   0
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   0
      Transparent     =   False
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   100
   End
   Begin TextFieldChanger fldHash
      AcceptTabs      =   False
      Alignment       =   0
      AutoDeactivate  =   True
      AutomaticallyCheckSpelling=   False
      BackColor       =   &cFFFFFF00
      Bold            =   False
      Border          =   True
      CueText         =   "Drop the Zip file here to calculate the hash"
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Format          =   ""
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      Italic          =   False
      Left            =   149
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
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   False
      Text            =   ""
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   66
      Transparent     =   False
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   False
      Width           =   350
   End
   Begin TextFieldChanger fldURL
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
      Left            =   149
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
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   100
      Transparent     =   False
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   False
      Width           =   470
   End
   Begin Label lblHash
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
      Left            =   40
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
      TabStop         =   True
      Text            =   "Hash:"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   67
      Transparent     =   True
      Underline       =   False
      Visible         =   False
      Width           =   67
   End
   Begin Label lblURL
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
      Left            =   40
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
      TabStop         =   True
      Text            =   "URL:"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   101
      Transparent     =   True
      Underline       =   False
      Visible         =   False
      Width           =   67
   End
   Begin TextFieldChanger fldExecutable
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
      Left            =   149
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
      TabIndex        =   6
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   32
      Transparent     =   False
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   False
      Width           =   470
   End
   Begin Label lblExecutable
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
      Left            =   40
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
      TabStop         =   True
      Text            =   "Executable:"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   33
      Transparent     =   True
      Underline       =   False
      Visible         =   False
      Width           =   67
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Open()
		  //
		  // Hide the Executable if we don't need it
		  //
		  
		  if not NeedsExecutableName then
		    dim diff as integer = fldHash.Top - fldExecutable.Top
		    fldExecutable.Visible = false
		    fldExecutable.Left = -32000
		    lblExecutable.Visible = false
		    lblExecutable.Left = -32500
		    
		    fldHash.Top = fldHash.Top - diff
		    lblHash.Top = lblHash.Top - diff
		    fldURL.Top = fldURL.Top - diff
		    lblURL.Top = lblURL.Top - diff
		    btnHashFromURL.Top = btnHashFromURL.Top - diff
		    
		    self.Height = self.Height - diff
		  end if
		  
		  AdjustControls
		  
		  RaiseEvent Open
		  
		  AdjustControls
		  
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub AdjustControls()
		  if BinaryName <> "" then
		    cbUseBinary.Caption = BinaryName.NthField( "Binary", 1 )
		  end if
		  
		  dim isChecked as boolean = cbUseBinary.Value
		  dim isVisible as boolean = isChecked
		  
		  dim lastControlIndex as integer = self.ControlCount - 1
		  for i as integer = 0 to lastControlIndex
		    dim c as Control = self.Control( i )
		    select case c
		    case isa CheckBox
		      CheckBox( c ).Enabled = self.Enabled
		      
		    case isa RectControl
		      if c is fldExecutable and not NeedsExecutableName then
		        fldExecutable.Visible = false
		      else
		        RectControl( c ).Visible = isVisible
		      end if
		      
		    end select
		  next
		  
		  if btnHashFromURL.Visible then
		    btnHashFromURL.Enabled = self.Enabled and fldURL.Text.Trim <> "" and Version <> ""
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Clear()
		  Load nil, ""
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetBinaryInformation() As Kaju.BinaryInformation
		  if not cbUseBinary.Value then
		    return nil
		  end if
		  
		  dim b as new Kaju.BinaryInformation( NeedsExecutableName )
		  b.URL = fldURL.Text
		  b.Hash = fldHash.Text
		  if NeedsExecutableName then
		    b.ExecutableName = fldExecutable.Text
		  end if
		  
		  return b
		  
		End Function
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

	#tag Method, Flags = &h0
		Sub Load(binary As Kaju.BinaryInformation, version As String)
		  self.Version = version.Trim
		  
		  cbUseBinary.Value = binary isa Kaju.BinaryInformation
		  
		  if cbUseBinary.Value then
		    fldExecutable.Text = binary.ExecutableName
		    fldHash.Text = binary.Hash
		    fldURL.Text = binary.URL
		  else
		    fldExecutable.Text = ""
		    fldHash.Text = ""
		    fldURL.Text = ""
		  end if
		  
		  AdjustControls
		  
		End Sub
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event CheckedChanged()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event Open()
	#tag EndHook


	#tag Property, Flags = &h0
		BinaryName As String
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return cbUseBinary.Value
			  
			End Get
		#tag EndGetter
		IsChecked As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  return Kaju.UpdateInformation.BinaryNeedsExecutableName( BinaryName )
			  
			End Get
		#tag EndGetter
		Private NeedsExecutableName As Boolean
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private Version As String
	#tag EndProperty


#tag EndWindowCode

#tag Events btnHashFromURL
	#tag Event
		Sub Action()
		  HashFromURL( fldURL.Text, Version, fldHash )
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cbUseBinary
	#tag Event
		Sub Action()
		  AdjustControls()
		  RaiseEvent CheckedChanged
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events fldHash
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
#tag Events fldURL
	#tag Event
		Sub TextChange()
		  AdjustControls()
		End Sub
	#tag EndEvent
#tag EndEvents
#tag ViewBehavior
	#tag ViewProperty
		Name="DoubleBuffer"
		Visible=true
		Group="Windows Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="AcceptFocus"
		Visible=true
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="AcceptTabs"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="AutoDeactivate"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="BackColor"
		Visible=true
		Group="Background"
		InitialValue="&hFFFFFF"
		Type="Color"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Backdrop"
		Visible=true
		Group="Background"
		Type="Picture"
		EditorType="Picture"
	#tag EndViewProperty
	#tag ViewProperty
		Name="BinaryName"
		Visible=true
		Group="Behavior"
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Enabled"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="EraseBackground"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasBackColor"
		Visible=true
		Group="Background"
		InitialValue="False"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Height"
		Visible=true
		Group="Size"
		InitialValue="300"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="HelpTag"
		Visible=true
		Group="Appearance"
		Type="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="InitialParent"
		Group="Position"
		Type="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="IsChecked"
		Group="Behavior"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Left"
		Visible=true
		Group="Position"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockBottom"
		Visible=true
		Group="Position"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockLeft"
		Visible=true
		Group="Position"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockRight"
		Visible=true
		Group="Position"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockTop"
		Visible=true
		Group="Position"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Name"
		Visible=true
		Group="ID"
		Type="String"
		EditorType="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Super"
		Visible=true
		Group="ID"
		Type="String"
		EditorType="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="TabIndex"
		Visible=true
		Group="Position"
		InitialValue="0"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="TabPanelIndex"
		Group="Position"
		InitialValue="0"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="TabStop"
		Visible=true
		Group="Position"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Top"
		Visible=true
		Group="Position"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Transparent"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="UseFocusRing"
		Visible=true
		Group="Appearance"
		InitialValue="False"
		Type="Boolean"
		EditorType="Boolean"
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
		Group="Size"
		InitialValue="300"
		Type="Integer"
	#tag EndViewProperty
#tag EndViewBehavior
