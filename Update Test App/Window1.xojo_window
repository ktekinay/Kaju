#tag Window
Begin Window Window1
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   CloseButton     =   True
   Compatibility   =   ""
   Composite       =   False
   Frame           =   0
   FullScreen      =   False
   FullScreenButton=   False
   HasBackColor    =   False
   Height          =   400
   ImplicitInstance=   True
   LiveResize      =   True
   MacProcID       =   0
   MaxHeight       =   32000
   MaximizeButton  =   True
   MaxWidth        =   32000
   MenuBar         =   1729944148
   MenuBarVisible  =   True
   MinHeight       =   64
   MinimizeButton  =   True
   MinWidth        =   64
   Placement       =   0
   Resizeable      =   True
   Title           =   "Kaju Update Test"
   Visible         =   True
   Width           =   600
   Begin Label Label1
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   195
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
      Multiline       =   True
      Scope           =   0
      Selectable      =   False
      TabIndex        =   0
      TabPanelIndex   =   0
      Text            =   "Post the update information for this binary to your web site using the admin app but say that it's v.1.1.\n\nFor the binary, use a zipped version of the same "
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
   Begin PushButton PushButton1
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
      Left            =   260
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   314
      Underline       =   False
      Visible         =   True
      Width           =   129
   End
End
#tag EndWindow

#tag WindowCode
#tag EndWindowCode

#tag Events PushButton1
	#tag Event
		Sub Action()
		  dim u as new Kaju.UpdateChecker( App.PrefFolder )
		  u.ServerPublicRSAKey = _
		  "30820120300D06092A864886F70D01010105000382010D00308201080282010100D1DE526C8D98CCBFFDB4BD71487AC16205CF851696FB2910ABBC564BFEC1261A53A90794102BCC80EFB3CED3F8E73D90FF4C426D2315DE5E31A1A6C7563A21EADBD91B1DD637FAE0BED539C186BCB81DD865CC2A2F9427F717AA5E837C53AB90691569FC45EE17AF0ACD80E0C24C864EE86D4DBB7A6010E09B4E0BC556004E02980388C654A1C676A31E3AF788754E0CF7DEEC8236D55EDD5BB7490011B27CDEE5E254099FDE98C17D5F85014622D64C3BFB6A77200050FB2C8DF9A1ACEE50CF5A8353CE68304F91EC4F463E76BCF90A15152D03308B229FFE91E4906990D0E5F2E5C3ACC106E58DB1A37095DCBD5E233D7ED4A41AA263A73C54D4F12A113881020111"
		  u.UpdateURL = "http://www.mactechnologies.com/Kaju_Test/UpdateInformation.html"
		  
		  u.Execute
		End Sub
	#tag EndEvent
#tag EndEvents
