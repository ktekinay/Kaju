#tag Class
Protected Class CheckBoxChanger
Inherits CheckBox
	#tag Event
		Sub Action()
		  self.TrueWindow.ContentsChanged = true
		  RaiseEvent Action()
		End Sub
	#tag EndEvent


	#tag Hook, Flags = &h0
		Event Action()
	#tag EndHook


End Class
#tag EndClass
