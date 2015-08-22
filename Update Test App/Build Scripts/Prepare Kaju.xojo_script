const kTargetMac = 7
const kTargetWin = 3
const kTargetLinux = 4

Function ConfirmTool( toolPath as String ) As Boolean
toolPath = DoShellCommand( "echo " + toolPath ).Trim
dim s as string
s = DoShellCommand( "which " + toolPath )
return s.Trim = toolPath 
End Function

Function Quoted( s as String ) As String
return "'" + s.ReplaceAll( "'", "'\''" ) + "'"
End Function

Function ShellToPosixPath( shellPath as String ) As String
dim path as string = shellPath.ReplaceAll( "\", "" )
path = Quoted( path )
return path
End Function

//
// Confirm that it's a Mac
//
if not ConfirmTool( "/usr/bin/sw_vers" ) then
print "This build script can only be run in a Mac."
return
end if

//
// Confirm that ditto is available
//
dim ditto as string
ditto = "/usr/bin/ditto"
if not ConfirmTool( ditto ) then
print "Error: Can't find ditto"
return
end if

//
// Confirm that the kaju CLI is available
//
dim topLevelPath as string = CurrentBuildLocation
select case CurrentBuildTarget
case kTargetWin, kTargetLinux 
topLevelPath = topLevelPath + "/../../../.."
case else
topLevelPath = topLevelPath + "/../../.."
end select

dim kaju as string = topLevelPath + "/Kaju\ Admin\ CLI/Builds\ \-\ Kaju\ Admin\ CLI.xojo_project/Mac\ OS\ X\ \(Intel\)/kaju/kaju"

dim result as string
result = DoShellCommand( kaju )
if result.InStr( "addversion" ) = 0 then
print "The kaju CLI is not available. Build it first."
return
end if

dim destPath as string = topLevelPath + "/Update\ Test\ Files\ \(Upload\ These\)"

//
// Compress the files
//
dim zipName as string
dim sourcePath as string
dim sequesterRsrc as string
dim binaryType as string

select case CurrentBuildTarget
case kTargetMac
zipName = "Kaju_Update_Test_Mac.zip"
sourcePath = CurrentBuildLocation + "/'" + CurrentBuildAppName + ".app'"
sequesterRsrc = "--sequesterRsrc "
binaryType = "--MacBinary"
case kTargetWin
zipName = "Kaju_Update_Test_Win.zip"
sourcePath = CurrentBuildLocation
binaryType = "--WinBinary"
case kTargetLinux
zipName = "Kaju_Update_Test_Linux.zip"
sourcePath = CurrentBuildLocation
binaryType = "--LinuxBinary"
case else
print "CurrentBuildTarget = " + str( CurrentBuildTarget )
return
end select

dim zipFile as string = destPath + "/" + zipName

dim kajuFile as string = topLevelPath + "/Kaju\ Update\ Test\ v1.kaju"

dim cmd as string
cmd = ditto + " -ck --keepParent " + sequesterRsrc + sourcePath + " " + zipFile
dim err as string = DoShellCommand( cmd )
if err <> "" then
print err + &uA + &uA + cmd
return
end if

//
// Get the versions
//
dim versions() as string = DoShellCommand( kaju + " --file=" + kajuFile + " listversions" ).Trim.Split( &uA )

//
// Set the versions
//
for each version as string in versions
cmd = kaju + " --file=" + kajuFile + " editversion --version=" + Quoted( version ) + _
" " + binaryType + "=" + ShellToPosixPath( zipFile )
dim r as string = DoShellCommand( cmd )
if r <> "" then
print "Version: " + version + &uA + &uA + r
return
end if
next

//
// Export the file
//
dim exportName as string = "UpdateInformation.html"
dim exportPath as string = destPath + "/" + exportName

cmd = kaju + " --file=" + kajuFile + " export " + destPath
err = DoShellCommand( cmd )
if err <> "" then
print err + &uA + &uA + cmd
return
end if