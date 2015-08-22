Function ConfirmTool( toolPath as String ) As Boolean
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
