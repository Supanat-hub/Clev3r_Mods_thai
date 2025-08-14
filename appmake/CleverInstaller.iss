[Setup]
AppName=Clever
AppVersion=1.0
AppPublisher=p.spn_
DefaultDirName=C:\clev3r
DisableDirPage=no
DisableProgramGroupPage=yes
CreateAppDir=yes
PrivilegesRequired=admin
ChangesAssociations = yes
OutputDir=Output
OutputBaseFilename=clever_setup
Compression=lzma
SolidCompression=yes
WizardStyle=modern

[Files]
Source: "dist\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{userdesktop}\Clever"; Filename: "{app}\Clever.exe"; WorkingDir: "{app}"; IconFilename: "{app}\Clever.exe"

[Run]
Filename: "notepad.exe"; Parameters: "{app}\readMe.txt"; Flags: postinstall skipifsilent

[Registry]
; สร้าง association สำหรับไฟล์ .bp
Root: HKCR; Subkey: ".bp"; ValueType: string; ValueName: ""; ValueData: "Clever.bpFile"; Flags: uninsdeletevalue
Root: HKCR; Subkey: "Clever.bpFile\shell\open\command"; ValueType: string; ValueName: ""; ValueData: """{app}\Clever.exe"" ""%1"""; Flags: uninsdeletekey

; สร้าง association สำหรับไฟล์ .bpm
Root: HKCR; Subkey: ".bpm"; ValueType: string; ValueName: ""; ValueData: "Clever.bpmFile"; Flags: uninsdeletevalue
Root: HKCR; Subkey: "Clever.bpmFile\shell\open\command"; ValueType: string; ValueName: ""; ValueData: """{app}\Clever.exe"" ""%1"""; Flags: uninsdeletekey

Root: HKLM; Subkey: "SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\Clever"; \
  ValueType: string; ValueName: "Publisher"; ValueData: "p.spn_"; Flags: uninsdeletevalue