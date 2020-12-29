# # Get-FileHash filename -Algorithm SHA256

Set-ExecutionPolicy Bypass -Scope Process -Force; iex "& { $(irm https://aka.ms/install-artifacts-credprovider.ps1) } -AddNetfx"

Set-ExecutionPolicy Bypass -Scope Process -Force; iex "& { $(irm https://aka.ms/install-powershell.ps1) } -UseMSI" ##install PowerShell 7 >

# curl -L https://aka.ms/InstallAzureCli | bash
# curl https://azurecliprod.blob.core.windows.net/install | bash
Invoke-WebRequest -Uri https://aka.ms/installazurecliwindows -OutFile "${env:TEMP}/AzureCLI.msi"; Start-Process msiexec.exe -Wait -ArgumentList "/I ${env:TEMP}/AzureCLI.msi /quiet"; rm "${env:TEMP}/AzureCLI.msi"

#Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

Set-ExecutionPolicy Bypass -Scope Process -Force; iex "& { $(irm https://chocolatey.org/install.ps1) }"

choco install -y notepadplusplus.install
# choco install -y textpad
choco install -y git.install
# choco install git-credential-manager-for-windows
# choco install -y 7zip.install
choco install -y winrar
# choco install -y putty.install
choco install -y filezilla
choco install -y postman
choco install -y fiddler --install-arguments "/D=C:/Tools/Fiddler"
choco install -y sysinternals

choco install -y bulkrenameutility.install

choco install -y windows-10-update-assistant

choco install -y jdk8 -params "both=true"
choco install -y openjdk8
choco install -y openjdk11

# choco install -y tomcat

choco install -y msys2 --params "/InstallDir:C:/Tools/msys2"
choco install -y ruby ## --params "/InstallDir:C:/Tools/ruby27"
# choco install -y python3 --params "/InstallDir:C:/Tools/python3 /InstallDir32:C:/Tools/python3_x86"
# choco install -y miniconda3 --execution-timeout=5400 --params "/InstallationType:AllUsers /AddToPath:1 /RegisterPython:1" ## '"/InstallationType:[AllUsers|JustMe] /RegisterPython:[0|1] /AddToPath:[0|1] /D:C:/Tools"'
choco install -y anaconda3 --execution-timeout=5400 --params "/AddToPath /D:C:/Tools" ## '"/JustMe /DoNotRegister /AddToPath /D:C:/Tools"'

& "C:/tools/anaconda3/python.exe" -m pip install "jupyter>=1.0.0" "pandas>=0.24.2" "sparkmagic>=0.12.9" "prose-codeaccelerator>=1.3.0" "powershell-kernel>=0.1.2" --extra-index-url https://prose-python-packages.azurewebsites.net

choco install -y dotnetfx
# choco install -y dotnetcore-runtime
choco install -y dotnetcore-sdk
# choco install -y dotnetcore-windowshosting

dotnet tool install --global Microsoft.dotnet-interactive
dotnet interactive jupyter install


choco install -y visualstudio2017buildtools

# choco install -y visualstudio2019buildtools
# # choco install -y visualstudio2019buildtools --package-parameters "--allWorkloads --includeRecommended --includeOptional --passive --locale en-US"

## choco install -y nodejs
## install key node utilities - 

choco install -y powershell-core

choco install -y azure-cli
choco install -y az.powershell


choco install -y microsoftazurestorageexplorer

choco install -y azure-data-studio
choco install -y azuredatastudio-powershell
choco install -y azure-data-studio-sql-server-admin-pack

# choco install -y sql-server-management-studio

choco install -y sqlpackage


# choco install -y microsoft-edge
# choco install -y microsoft-edge-insider
choco install -y microsoft-edge-insider-dev
choco install -y selenium-chromium-edge-driver

# choco install -y googlechrome
# choco install -y selenium-chrome-driver


# choco install -y docker-desktop
# choco install -y docker-cli
# choco install -y docker-compose
# choco install -y kubernetes-helm


choco install -y intellijidea-community
choco install -y pycharm-community

# # choco install -y golang

choco install -y vscode ## --params "/NoDesktopIcon /NoQuicklaunchIcon /NoContextMenuFiles /NoContextMenuFolders /DontAddToPath"
# choco install -y vscode.install ## --params "/NoDesktopIcon /NoQuicklaunchIcon /NoContextMenuFiles /NoContextMenuFolders /DontAssociateWithFiles /DontAddToPath"
choco install -y vscode-gitignore
choco install -y vscode-gitattributes
choco install -y vscode-ruby
choco install -y vscode-python
# choco install -y vscode-go
choco install -y vscode-pylance
choco install -y vscode-csharp
choco install -y vscode-powershell
choco install -y vscode-docker
choco install -y vscode-drawio
choco install -y vscode-vsonline
choco install -y vscode-intellicode
choco install -y vscode-vsliveshare
choco install -y vscode-live-share-audio
# choco install -y vscode-chrome-debug
# choco install -y vscode-react-native
choco install -y vscode-azure-deploy
choco install -y vscode-azurerepos
choco install -y vscode-pull-request-github
choco install -y vscode-azurerm-tools
choco install -y vscode-yaml
# choco install -y vscode-mssql
# choco install -y vscode-oracle-devtools

# choco install oracle-sql-developer --params "'/Username:MyUsername /Password:MyPassword'"

# choco install -y visualstudio2019community
# choco install -y visualstudio2019professional
choco install -y visualstudio2019enterprise ## --package-parameters "--installPath C:/Program Files (x86)/Microsoft Visual Studio/2019/Enterprise"
choco install -y visualstudio-github

choco install -y visualstudio2019-workload-azure --package-parameters "--includeOptional --includeRecommended" ## "--no-includeRecommended --productId Microsoft.VisualStudio.Product.Enterprise --channelId VisualStudio.16.Release"
choco install -y visualstudio2019-workload-node --package-parameters "--includeOptional --includeRecommended"
choco install -y visualstudio2019-workload-netweb
choco install -y visualstudio2019-workload-netcoretools
choco install -y visualstudio2019-workload-manageddesktop
choco install -y visualstudio2019-workload-universal
# choco install -y visualstudio2019-workload-netcrossplat
choco install -y visualstudio2019-workload-data
choco install -y visualstudio2019-workload-datascience

choco install -y azure-functions-core-tools-3 --params "'/x64'"

npm i -g azure-functions-core-tools@3 --unsafe-perm true
npm i -g typescript

# choco install -y azure-pipelines-agent --params "'/Directory:C:\Tools\AzDevOpsAgent /Token:mytoken /Pool:Integration /Url:https://dev.azure.com/orgname'"


choco install -y ssis-vs2019
choco install -y ssrs-2019 --package-parameters='"/Edition:Dev"'

# choco install -y sqlserverlocaldb

choco install -y azure-cosmosdb-emulator


# choco install -y mysql --params "/port:3307 /serviceName:AltSQL /dataLocation:C:\ProgramData\MySQL\Databases" ## /installLocation
# choco install -y mysql.workbench

# choco install -y mariadb

# choco install -y eclipse

choco install -y sqlite.shell
choco install -y sqlite.analyzer

# choco install -y microsoft-windows-terminal

choco install -y adobereader

choco install -y vlc
choco install -y vlmc

choco install -y skype

