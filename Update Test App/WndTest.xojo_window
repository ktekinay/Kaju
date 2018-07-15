#tag Window
Begin Window WndTest
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   CloseButton     =   True
   Compatibility   =   ""
   Composite       =   False
   Frame           =   0
   FullScreen      =   False
   FullScreenButton=   False
   HasBackColor    =   False
   Height          =   584
   ImplicitInstance=   True
   LiveResize      =   True
   MacProcID       =   0
   MaxHeight       =   584
   MaximizeButton  =   False
   MaxWidth        =   600
   MenuBar         =   1729944148
   MenuBarVisible  =   True
   MinHeight       =   584
   MinimizeButton  =   True
   MinWidth        =   600
   Placement       =   0
   Resizeable      =   False
   Title           =   "Kaju Update Test"
   Visible         =   True
   Width           =   600
   Begin Label Label1
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   70
      HelpTag         =   ""
      Index           =   0
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   True
      Scope           =   0
      Selectable      =   False
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "This will check a predefined web site for an update. It will always show an update for X.1 and offer to download it, but the download is, in fact, the same version. In other words, the app will replace itself (sometimes with an older version) just so the process can be repeated."
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   14
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   547
   End
   Begin PushButton btnExecute
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   False
      Caption         =   "Check"
      Default         =   True
      Enabled         =   True
      Height          =   45
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   12
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   15
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   453
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   129
   End
   Begin CheckBox cbHonorIgnored
      AutoDeactivate  =   True
      Bold            =   False
      Caption         =   "Honor Ignored"
      DataField       =   ""
      DataSource      =   ""
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
      State           =   1
      TabIndex        =   5
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   216
      Transparent     =   True
      Underline       =   False
      Value           =   True
      Visible         =   True
      Width           =   141
   End
   Begin Label lblResult
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   63
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   235
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   True
      Scope           =   0
      Selectable      =   False
      TabIndex        =   16
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Press check to get a result"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "SmallSystem"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   461
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   332
   End
   Begin PushButton btnResetIgnored
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   False
      Caption         =   "Reset Ignored"
      Default         =   False
      Enabled         =   True
      Height          =   30
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   191
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   6
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   216
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   139
   End
   Begin CheckBox cbAllowWindow
      AutoDeactivate  =   True
      Bold            =   False
      Caption         =   "Allow Update Window"
      DataField       =   ""
      DataSource      =   ""
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
      State           =   1
      TabIndex        =   7
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   248
      Transparent     =   True
      Underline       =   False
      Value           =   True
      Visible         =   True
      Width           =   183
   End
   Begin CheckBox cbAllowErrorDialog
      AutoDeactivate  =   True
      Bold            =   False
      Caption         =   "Allow Error Dialog"
      DataField       =   ""
      DataSource      =   ""
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
      State           =   1
      TabIndex        =   8
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   280
      Transparent     =   True
      Underline       =   False
      Value           =   True
      Visible         =   True
      Width           =   183
   End
   Begin PopupMenu pumStageAllowed
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   30
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   ""
      Italic          =   False
      Left            =   191
      ListIndex       =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   11
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   346
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   171
   End
   Begin Label Label1
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   1
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   12
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Min. Stage Allowed:"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   355
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   152
   End
   Begin Label lblVersion
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
      Left            =   374
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   18
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Version"
      TextAlign       =   2
      TextColor       =   &c00000000
      TextFont        =   "SmallSystem"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   543
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   206
   End
   Begin CheckBox cbAllow32bitTo64bitUpdates
      AutoDeactivate  =   True
      Bold            =   False
      Caption         =   "Allow 32-bit To 64-bit Updates"
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   329
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      State           =   1
      TabIndex        =   9
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   280
      Transparent     =   True
      Underline       =   False
      Value           =   True
      Visible         =   True
      Width           =   238
   End
   Begin PopupMenu pumChooseUpdateURL
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   30
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   ""
      Italic          =   False
      Left            =   191
      ListIndex       =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   13
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   387
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   171
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
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   14
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Update File URL:"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   397
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   152
   End
   Begin CheckBox cbAsynchrous
      AutoDeactivate  =   True
      Bold            =   False
      Caption         =   "Asynchronous"
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   27
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
      State           =   1
      TabIndex        =   17
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   504
      Transparent     =   False
      Underline       =   False
      Value           =   True
      Visible         =   True
      Width           =   159
   End
   Begin CheckBox cbUseAuthenticated
      AutoDeactivate  =   True
      Bold            =   False
      Caption         =   "Authenticated"
      DataField       =   ""
      DataSource      =   ""
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
      State           =   1
      TabIndex        =   10
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   312
      Transparent     =   True
      Underline       =   False
      Value           =   True
      Visible         =   True
      Width           =   183
   End
   Begin TextField fldURL
      AcceptTabs      =   False
      Alignment       =   0
      AutoDeactivate  =   True
      AutomaticallyCheckSpelling=   False
      BackColor       =   &cFFFFFF00
      Bold            =   False
      Border          =   True
      CueText         =   "Fully formed url starting with http and including un:pw if required"
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Format          =   ""
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      Italic          =   False
      Left            =   131
      LimitText       =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Mask            =   ""
      Password        =   False
      ReadOnly        =   False
      Scope           =   0
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   96
      Transparent     =   False
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   436
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
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Override URL:"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   97
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   112
   End
   Begin Label Label1
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   74
      HelpTag         =   ""
      Index           =   4
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   True
      Scope           =   0
      Selectable      =   False
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Override Pub. Key:"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   130
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   112
   End
   Begin TextArea fldPublicKey
      AcceptTabs      =   False
      Alignment       =   0
      AutoDeactivate  =   True
      AutomaticallyCheckSpelling=   True
      BackColor       =   &cFFFFFF00
      Bold            =   False
      Border          =   True
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Format          =   ""
      Height          =   74
      HelpTag         =   "The public key that matches the file you are testing"
      HideSelection   =   True
      Index           =   -2147483648
      Italic          =   False
      Left            =   131
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
      Scope           =   0
      ScrollbarHorizontal=   False
      ScrollbarVertical=   True
      Styled          =   False
      TabIndex        =   4
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextColor       =   &c00000000
      TextFont        =   "SmallSystem"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   130
      Transparent     =   False
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   436
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Open()
		  dim u as new Kaju.UpdateChecker( App.PrefFolder )
		  
		  u.DefaultImage = Some_Image
		  u.DefaultUseTransparency = true
		  
		  Checker = u
		  AddHandler Checker.ExecuteAsyncComplete, WeakAddressOf Checker_ExecuteAsyncComplete
		  
		  //
		  // Normally, this object will not be placed on a window, instead
		  // called directly in the App or similar. With that in mind,
		  // I opted for AddHandler here to simulate that rather than taking
		  // the easier course of placing the UpdateChecker into the window
		  // as a control. 
		  //
		  
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub AddRowAndTag(pum As PopUpMenu, s As String, tag As Variant)
		  pum.AddRow s
		  pum.RowTag( pum.ListCount - 1 ) = tag
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub Checker_ExecuteAsyncComplete(sender As Kaju.UpdateChecker)
		  #pragma unused sender
		  HandlePostCheck
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub HandlePostCheck()
		  select case Checker.Result
		  case Kaju.UpdateChecker.ResultType.UpdateAlreadyInProgress
		    lblResult.Text = "Update already in progress"
		    
		  case Kaju.UpdateChecker.ResultType.UnsupportedOS
		    lblResult.Text = "This OS is not supported (missing required tools)"
		    
		  case Kaju.UpdateChecker.ResultType.NoWritePermission
		    lblResult.Text = "Aborted (no write permission)"
		    
		  case Kaju.UpdateChecker.ResultType.Error
		    lblResult.Text = "Error, user chose to try later"
		    
		  case Kaju.UpdateChecker.ResultType.IgnoredUpdateAvailable
		    lblResult.Text = "Updates available, but ignored"
		    
		  case Kaju.UpdateChecker.ResultType.NoUpdateAvailable
		    lblResult.Text = "No updates available"
		    
		  case Kaju.UpdateChecker.ResultType.UpdateAvailable
		    lblResult.Text = "Updates available"
		    
		  case Kaju.UpdateChecker.ResultType.RequiredUpdateAvailable
		    lblResult.Text = "Required update available"
		    
		  case Kaju.UpdateChecker.ResultType.FetchingUpdateInfo
		    lblResult.Text = "Fetching update information"
		    
		  case Kaju.UpdateChecker.ResultType.PageNotFound
		    lblResult.Text = "The URL resulted in a 404 error"
		    
		  else
		    lblResult.Text = "UNKNOWN RESULT"
		    
		  end select
		  
		  if Checker isa object and Checker.UpdateURL <> "" then
		    lblResult.Text = lblResult.Text + EndOfLine + EndOfLine + Checker.UpdateURL
		  end if
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		Checker As Kaju.UpdateChecker
	#tag EndProperty


	#tag Constant, Name = kBaseURL, Type = String, Dynamic = False, Default = \"http://www.mactechnologies.com/Kaju_Test/", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kBaseURLAuthenticated, Type = String, Dynamic = False, Default = \"http://Kaju:password@www.mactechnologies.com/Kaju_Test_Authenticated/", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kServerPublicKey, Type = String, Dynamic = False, Default = \"30820120300D06092A864886F70D01010105000382010D00308201080282010100D1DE526C8D98CCBFFDB4BD71487AC16205CF851696FB2910ABBC564BFEC1261A53A90794102BCC80EFB3CED3F8E73D90FF4C426D2315DE5E31A1A6C7563A21EADBD91B1DD637FAE0BED539C186BCB81DD865CC2A2F9427F717AA5E837C53AB90691569FC45EE17AF0ACD80E0C24C864EE86D4DBB7A6010E09B4E0BC556004E02980388C654A1C676A31E3AF788754E0CF7DEEC8236D55EDD5BB7490011B27CDEE5E254099FDE98C17D5F85014622D64C3BFB6A77200050FB2C8DF9A1ACEE50CF5A8353CE68304F91EC4F463E76BCF90A15152D03308B229FFE91E4906990D0E5F2E5C3ACC106E58DB1A37095DCBD5E233D7ED4A41AA263A73C54D4F12A113881020111", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kUpdateFile32bit, Type = String, Dynamic = False, Default = \"UpdateInformation32bit.html", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kUpdateFile64bit, Type = String, Dynamic = False, Default = \"UpdateInformation64bit.html", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kUpdateFileAll, Type = String, Dynamic = False, Default = \"UpdateInformation.html", Scope = Public
	#tag EndConstant


#tag EndWindowCode

#tag Events btnExecute
	#tag Event
		Sub Action()
		  dim baseURL as string = _
		  if( cbUseAuthenticated.Value, kBaseURLAuthenticated, kBaseURL )
		  
		  Checker.HonorIgnored = cbHonorIgnored.Value
		  Checker.Allow32bitTo64bitUpdates = cbAllow32bitTo64bitUpdates.Value
		  dim url as string = fldURL.Text.Trim
		  if url = "" then
		    url = baseURL + pumChooseUpdateURL.RowTag( pumChooseUpdateURL.ListIndex ).StringValue
		  end if
		  Checker.UpdateURL = url
		  Checker.AllowRedirection = true
		  
		  dim pubKey as string = fldPublicKey.Text.Trim
		  if pubKey = "" then
		    pubKey = kServerPublicKey
		  end if
		  Checker.ServerPublicRSAKey = pubKey
		  
		  dim allowWindow as integer = if( cbAllowWindow.Value, Kaju.UpdateChecker.kAllowUpdateWindow, 0 )
		  dim allowErrorDialog as integer = if( cbAllowErrorDialog.Value, Kaju.UpdateChecker.kAllowErrorDialog, 0 )
		  Checker.AllowedInteraction = allowWindow + allowErrorDialog
		  
		  Checker.AllowedStage = pumStageAllowed.RowTag( pumStageAllowed.ListIndex )
		  
		  if cbAsynchrous.Value then
		    Checker.ExecuteAsync()
		    //
		    // See AddHandler notes in the Open event
		    //
		  else
		    Checker.Execute()
		  end if
		  
		  HandlePostCheck
		  
		  return
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnResetIgnored
	#tag Event
		Sub Action()
		  Checker.ResetIgnored
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events pumStageAllowed
	#tag Event
		Sub Open()
		  me.AddRow( "Development" )
		  me.RowTag( me.ListCount - 1 ) = App.Development
		  
		  me.AddRow( "Alpha" )
		  me.RowTag( me.ListCount - 1 ) = App.Alpha
		  
		  me.AddRow( "Beta" )
		  me.RowTag( me.ListCount - 1 ) = App.Beta
		  
		  me.AddRow( "Final" )
		  me.RowTag( me.ListCount - 1 ) = App.Final
		  
		  me.ListIndex = 0
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events lblVersion
	#tag Event
		Sub Open()
		  me.Text = "Kaju Version " + Kaju.Version
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events pumChooseUpdateURL
	#tag Event
		Sub Open()
		  AddRowAndTag me, "All Updates", kUpdateFileAll
		  AddRowAndTag me, "32-bit Only", kUpdateFile32bit
		  AddRowAndTag me, "64-bit Only", kUpdateFile64bit
		  
		  me.ListIndex = 0
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events fldURL
	#tag Event
		Sub TextChange()
		  if me.Text.Trim = "" then
		    cbUseAuthenticated.Enabled = true
		  else
		    cbUseAuthenticated.Enabled = false
		  end if
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events fldPublicKey
	#tag Event
		Sub TextChange()
		  dim newText as string = ReplaceLineEndings( me.Text, "" )
		  if newText <> me.Text then
		    me.Text = newText
		  end if
		  
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
