Function ConfirmTool( toolPath as String ) As Boolean
toolPath = DoShellCommand( "echo " + toolPath ).Trim
dim s as string
s = DoShellCommand( "which " + toolPath )
return s.Trim = toolPath 
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
dim path as string = CurrentBuildLocation
dim kaju as string = "'Kaju Admin CLI/Builds - Kaju Admin CLI.xojo_project/Mac OS X (Intel)/kaju/kaju'"
select case CurrentBuildTarget
case 3, 4 // Win, Linux
kaju = path + "/../../../../" + kaju
case else
kaju = path + "/../../../" + kaju
end select

dim result as string
result = DoShellCommand( kaju )
if result.InStr( "addversion" ) = 0 then
print "The kaju CLI is not available. Build it first."
return
end if

