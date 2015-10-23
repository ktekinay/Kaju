#tag Class
Protected Class TextAreaChanger
Inherits TextArea
	#tag Event
		Sub TextChange()
		  self.TrueWindow.ContentsChanged = true
		  RaiseEvent TextChange()
		End Sub
	#tag EndEvent


	#tag Hook, Flags = &h0
		Event TextChange()
	#tag EndHook


End Class
#tag EndClass
