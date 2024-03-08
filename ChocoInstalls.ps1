#Image Template Artifacts Script Version 1

If (!(Get-Item "c:\Artifacts")) {
    New-Item -ItemType Directory "c:\Artifacts"
    }
Start-Transcript -Path c:\Artifacts\Script-Transcript.log -Force
Write-Host "Installing Chocolatey"
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
Start-Sleep 15
Write-Host "Installing 7Zip..."
choco install 7zip -y
Write-Host "Installing Notepad++..."
choco install notepadplusplus -y
Stop-Transcript
