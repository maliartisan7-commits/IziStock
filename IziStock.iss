; Script Inno Setup pour IziStock
[Setup]
AppId={{8F2C1A3E-4B5D-4E6F-9A1B-2C3D4E5F6A7B}
AppName=IziStock
AppVersion=1.0
AppPublisher=MaliTechSolution
DefaultDirName={autopf}\IziStock
DefaultGroupName=IziStock
OutputBaseFilename=IziStockSetup
OutputDir=Output
Compression=lzma
SolidCompression=yes
ArchitecturesInstallIn64BitMode=x64compatible
DisableProgramGroupPage=yes
WizardStyle=modern

[Languages]
Name: "french"; MessagesFile: "compiler:Languages\French.isl"

[Tasks]
Name: "desktopicon"; Description: "Créer un raccourci sur le Bureau"; GroupDescription: "Raccourcis supplémentaires:"

[Files]
Source: "IziStock\bin\Release\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{group}\IziStock"; Filename: "{app}\IziStock.exe"
Name: "{group}\Désinstaller IziStock"; Filename: "{uninstallexe}"
Name: "{autodesktop}\IziStock"; Filename: "{app}\IziStock.exe"; Tasks: desktopicon

[Run]
Filename: "{app}\IziStock.exe"; Description: "Lancer IziStock"; Flags: nowait postinstall skipifsilent
