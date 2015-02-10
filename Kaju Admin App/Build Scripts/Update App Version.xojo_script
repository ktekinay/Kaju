dim kajuVersion as string
kajuVersion = ConstantValue( "Kaju.Version" )

dim parts() as string
parts = kajuVersion.Split( "." )

if parts.Ubound < 2 then
redim parts( 2 )
end if

for i as integer = 0 to 2
if parts( i ) = "" then
parts( i ) = "0"
end if
next i

PropertyValue( "App.MajorVersion" )  = parts( 0 )
PropertyValue( "App.MinorVersion" ) = parts( 1 )
PropertyValue( "App.BugVersion" ) = parts( 2 )

PropertyValue( "App.ShortVersion" ) = kajuVersion
PropertyValue( "App.LongVersion" ) = "v." + kajuVersion

