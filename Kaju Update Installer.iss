; Sample script for creating an installer for a 64-bit Xojo desktop app
; The created installer can be used for new installations and also for Kaju updates

#define XojoAppName "MyApp"
#define MyAppURL "https://mywebsite.com/"
#define AppGUID "{xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx}"
#define MyAppVersion GetFileVersion(AddBackslash(SourcePath) + "MyApp.exe")
#define MyAppPublisher "My Company Name"
#define MyAppExeName "{#XojoAppName}.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
VersionInfoVersion=1.0.0.0
SetupLogging=yes
SignTool=signtool
SignedUninstaller=yes
AppId={{#AppGUID}
AppName={#XojoAppName}
AppVersion={#MyAppVersion}
AppVerName={#XojoAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={commonpf}\{#XojoAppName}
; Since no icons will be created in "{group}", we don't need the wizard
; to ask for a Start Menu folder name:
DisableProgramGroupPage=yes
AllowNoIcons=yes
LicenseFile=C:\path\to\{#XojoAppName} End User License Agreement.rtf
OutputDir=.
OutputBaseFilename=Setup{#XojoAppName}v{#MyAppVersion}_Win64
Compression=lzma
SolidCompression=yes
ChangesAssociations=yes
ArchitecturesInstallIn64BitMode=x64
; Require Windows 7 SP1 or later
MinVersion=6.1.7601

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

; These directories will be created by the installer inside the DefaultDirName
; (defined above).
[Dirs]
Name: "{app}\{#XojoAppName} Libs"
Name: "{app}\{#XojoAppName} Resources"
Name: "{app}\locales"
Name: "{app}\swiftshader"

; These are the files to include. By default you want to include
; the EXE plus the Libs and Resources folders
; but you can include any other files you like as well.
[Files]
Source: ".\{#XojoAppName}\{#XojoAppName}.exe"; DestDir: "{app}"; Flags: ignoreversion signonce
Source: ".\{#XojoAppName}\*"; DestDir: "{app}\"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: ".\{#XojoAppName}\{#XojoAppName} Libs\*"; DestDir: "{app}\{#XojoAppName} Libs"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: ".\{#XojoAppName}\{#XojoAppName} Resources\*"; DestDir: "{app}\{#XojoAppName} Resources"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: ".\{#XojoAppName}\locales\*"; DestDir: "{app}\locales"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: ".\{#XojoAppName}\swiftshader\*"; DestDir: "{app}\swiftshader"; Flags: ignoreversion recursesubdirs createallsubdirs

; NOTE: Don't use "Flags: ignoreversion" on any shared system files

; Creates icons/links in the Start Menu and/or the desktop if the user chooses during installation.
[Icons]
;Name: "{group}\{#XojoAppName}"; Filename: "{app}\{#XojoAppName}.exe";
Name: "{commonprograms}\{#XojoAppName}"; Filename: "{app}\{#XojoAppName}.exe";
Name: "{commondesktop}\{#XojoAppName}"; Filename: "{app}\{#XojoAppName}.exe"; Tasks: desktopicon;

; Give the user the option to run the app after the installation is finished.
[Run]
Filename: "{app}\{#XojoAppName}.exe"; Description: "{cm:LaunchProgram,{#XojoAppName}}"; Flags: nowait postinstall skipifsilent

; This specifies the Visual C++ Windows Runtime Redistributable to also install because
; it is required by Xojo apps made with 2016r1 or later.
[Files]
Source: ".\Windows Universal Runtime\Installers\VC_redist.x64.exe"; DestDir: {tmp}

[Run]
Filename: {tmp}\VC_redist.x64.exe; Parameters: "/install /quiet /norestart"; StatusMsg: "Installing 64-bit Windows Universal runtime..."; Flags: waituntilterminated; Check: InstallVCRuntime();

[Code]
// Most of this code is pinched from https://stackoverflow.com/questions/2000296/inno-setup-how-to-automatically-uninstall-previous-installed-version 

function GetUninstallString(): String;
var
sUnInstPath: String;
sUnInstallString: String;
begin
sUnInstPath := ExpandConstant('Software\Microsoft\Windows\CurrentVersion\Uninstall\{#emit SetupSetting("AppId")}_is1');
sUnInstallString := '';
if not RegQueryStringValue(HKLM, sUnInstPath, 'UninstallString', sUnInstallString) then
RegQueryStringValue(HKCU, sUnInstPath, 'UninstallString', sUnInstallString);
Result := sUnInstallString;
end;

function IsUpgrade(): Boolean;
begin
Result := (GetUninstallString() <> '');
end;

function UnInstallOldVersion(): Integer;
var
sUnInstallString: String;
iResultCode: Integer;
begin
// Return Values:
// 1 - uninstall string is empty
// 2 - error executing the UnInstallString
// 3 - successfully executed the UnInstallString

// default return value
Result := 0;

// get the uninstall string of the old app
sUnInstallString := GetUninstallString();
if sUnInstallString <> '' then begin
sUnInstallString := RemoveQuotes(sUnInstallString);
if Exec(sUnInstallString, '/SILENT /NORESTART /SUPPRESSMSGBOXES','', SW_HIDE, ewWaitUntilTerminated, iResultCode) then
Result := 3
else
Result := 2;
end else
Result := 1;
end;

// Uninstalling old version doesn't seem to be necessary unless app file structure has changed
// procedure CurStepChanged(CurStep: TSetupStep);
// begin
// if (CurStep=ssInstall) then
// begin
// if (IsUpgrade()) then
// begin
// UnInstallOldVersion();
// end;
// end;
// end;

function ShouldSkipPage(PageID: Integer): Boolean;
begin
Result := False;

if ((PageID = wpLicense) or (PageID = wpSelectTasks)) and (IsUpgrade()) then
begin
Result := True;
end;
end;

// Adapted from https://stackoverflow.com/questions/3618257/is-it-possible-to-accept-custom-command-line-parameters-with-inno-setup 
{ Check if there is a command-line parameter "kajuupdate=true" }
function IsKajuUpdate(): Boolean;
begin
Result := False;
if ExpandConstant('{param:kajuupdate|false}') = 'true' then
Result := True;
end;

{ If installer is being run by a kaju update then user already has VCRuntime }
function InstallVCRuntime(): Boolean;
begin
Result := not IsKajuUpdate();
end;

// Adapted from https://stackoverflow.com/questions/28763220/inno-setup-delete-the-installer-after-the-install-process 
procedure CurStepChanged(CurStep: TSetupStep);
var
strContent: String;
intErrorCode: Integer;
strSelf_Delete_BAT: String;
begin
if (CurStep=ssDone) and (IsKajuUpdate()) then
begin
// strContent := ':try_delete' + #13 + #10 +
// 'del "' + ExpandConstant('{srcexe}') + '"' + #13 + #10 +
// 'if exist "' + ExpandConstant('{srcexe}') + '" goto try_delete' + #13 + #10 +
// 'del %0';

strContent := 'for /L %%a in (1,1,100) do (' + #13 + #10 +
'del "' + ExpandConstant('{srcexe}') + '"' + #13 + #10 +
'if not exist "' + ExpandConstant('{srcexe}') + '" goto end_loop' + #13 + #10 +
')' + #13 + #10 +
':end_loop' + #13 + #10 +
'del %0';
strSelf_Delete_BAT := ExtractFilePath(ExpandConstant('{tmp}')) + 'SelfDelete.bat';
SaveStringToFile(strSelf_Delete_BAT, strContent, False);
Exec(strSelf_Delete_BAT, '', '', SW_HIDE, ewNoWait, intErrorCode);
end;
end;