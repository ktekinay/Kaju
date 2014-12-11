#tag BuildAutomation
			Begin BuildStepList Linux
				Begin BuildProjectStep Build
				End
			End
			Begin BuildStepList Mac OS X
				Begin BuildProjectStep Build
				End
			End
			Begin BuildStepList Windows
				Begin BuildProjectStep Build
				End
				Begin CopyFilesBuildStep WinCopy7z
					AppliesTo = 0
					Destination = 2
					Subdirectory = 
					FolderItem = Li4ALi4ASW5jbHVkZSBJbiBXaW5kb3dzIEJ1aWxkcwBDb3B5IENvbnRlbnRzIHRvIEZyYW1ld29yawA3eg==
				End
			End
#tag EndBuildAutomation
