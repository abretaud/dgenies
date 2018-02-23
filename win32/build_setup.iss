; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
#define AppVer="1.0.1"
AppId={{4B4F7755-28D0-4157-89AA-9752C38E3508}
AppName=D-Genies
AppVersion={#AppVer}
;AppVerName=D-Genies {#AppVer}
AppPublisher=INRA - Genotoul bioinfo
AppPublisherURL=http://dgenies.toulouse.inra.fr
AppSupportURL=http://dgenies.toulouse.inra.fr
AppUpdatesURL=http://dgenies.toulouse.inra.fr
DefaultDirName={pf}\Dgenies
DisableProgramGroupPage=yes
LicenseFile=data\LICENSE.txt
OutputBaseFilename=dgenies-{#AppVer}_setup
SetupIconFile=data\logo.ico
Compression=lzma
SolidCompression=yes

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"
Name: "french"; MessagesFile: "compiler:Languages\French.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "dist\dgeniesrun\dgeniesrun.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "dist\dgeniesrun\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "data\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{commonprograms}\D-Genies"; Filename: "{app}\dgeniesrun.exe"
Name: "{commondesktop}\D-Genies"; Filename: "{app}\dgeniesrun.exe"; Tasks: desktopicon

[Run]
Filename: "{app}\dgeniesrun.exe"; Description: "{cm:LaunchProgram,D-Genies}"; Flags: nowait postinstall skipifsilent

