function Show-Menu {
    param (
        [string]$Prompt = 'Select an option'
    )
    Clear-Host
    Write-Host "1) Browser"
    Write-Host "2) Drivers"
    Write-Host "3) Word Processing"
    Write-Host "4) Programming"
    Write-Host "5) Social"
    Write-Host "6) Utilities"
    Write-Host "7) Exit"
    return Read-Host -Prompt $Prompt
}

function Install-Browser {
    Clear-Host
    Write-Host "1) Chrome"
    Write-Host "2) Ungoogled"
    Write-Host "3) Brave"
    Write-Host "4) Opera"
    Write-Host "5) Opera GX"
    Write-Host "6) Firefox"
    Write-Host "7) Go back"
    $choice = Read-Host -Prompt "Select a browser to install"
    switch ($choice) {
        1 { Write-Host "Installing Chrome..."; Invoke-WebRequest -Uri "https://dl.google.com/chrome/install/latest/chrome_installer.exe" -OutFile "$env:TEMP\chrome_installer.exe"; Start-Process -FilePath "$env:TEMP\chrome_installer.exe" -ArgumentList "/silent", "/install"; Start-Sleep -Seconds 10 }
        2 { Write-Host "Installing Ungoogled..."; Invoke-WebRequest -Uri "https://ungoogled-software.github.io/ungoogled-chromium-binaries" -OutFile "$env:TEMP\ungoogled_installer.exe"; Start-Process -FilePath "$env:TEMP\ungoogled_installer.exe" -ArgumentList "/silent", "/install"; Start-Sleep -Seconds 10 }
        3 { Write-Host "Installing Brave..."; Invoke-WebRequest -Uri "https://laptop-updates.brave.com/latest/winx64" -OutFile "$env:TEMP\brave_installer.exe"; Start-Process -FilePath "$env:TEMP\brave_installer.exe" -ArgumentList "/silent", "/install"; Start-Sleep -Seconds 10 }
        4 { Write-Host "Installing Opera..."; Invoke-WebRequest -Uri "https://download3.operacdn.com/pub/opera/desktop/76.0.4017.177/win/Opera_76.0.4017.177_Setup.exe" -OutFile "$env:TEMP\opera_installer.exe"; Start-Process -FilePath "$env:TEMP\opera_installer.exe" -ArgumentList "/silent", "/install"; Start-Sleep -Seconds 10 }
        5 { Write-Host "Installing Opera GX..."; Invoke-WebRequest -Uri "https://download3.operacdn.com/pub/opera_gx/desktop/76.0.4017.177/win/Opera_GX_76.0.4017.177_Setup.exe" -OutFile "$env:TEMP\opera_gx_installer.exe"; Start-Process -FilePath "$env:TEMP\opera_gx_installer.exe" -ArgumentList "/silent", "/install"; Start-Sleep -Seconds 10 }
        6 { Write-Host "Installing Firefox..."; Invoke-WebRequest -Uri "https://download.mozilla.org/?product=firefox-stub&os=win&lang=en-US" -OutFile "$env:TEMP\firefox_installer.exe"; Start-Process -FilePath "$env:TEMP\firefox_installer.exe" -ArgumentList "/silent", "/install"; Start-Sleep -Seconds 10 }
        7 { return }
        default { Write-Host "Invalid selection"; }
    }
}

function Install-Drivers {
    Clear-Host
    $choice = Read-Host -Prompt "Do you want to install all necessary drivers? (yes/no)"
    if ($choice -eq 'yes') {
        Write-Host "Installing necessary drivers..."
        # Add necessary driver installation commands here
        Start-Sleep -Seconds 10
    }
}

function Install-WordProcessing {
    Clear-Host
    Write-Host "1) OpenOffice"
    Write-Host "2) LibreOffice"
    Write-Host "3) Go back"
    $choice = Read-Host -Prompt "Select a software to install"
    switch ($choice) {
        1 { Write-Host "Installing OpenOffice..."; Invoke-WebRequest -Uri "https://sourceforge.net/projects/openofficeorg.mirror/files/latest/download" -OutFile "$env:TEMP\openoffice_installer.exe"; Start-Process -FilePath "$env:TEMP\openoffice_installer.exe" -ArgumentList "/silent", "/install"; Start-Sleep -Seconds 10 }
        2 { Write-Host "Installing LibreOffice..."; Invoke-WebRequest -Uri "https://download.documentfoundation.org/libreoffice/stable/7.1.5/win/x86_64/LibreOffice_7.1.5_Win_x64.msi" -OutFile "$env:TEMP\libreoffice_installer.msi"; Start-Process -FilePath "$env:TEMP\libreoffice_installer.msi" -ArgumentList "/quiet"; Start-Sleep -Seconds 10 }
        3 { return }
        default { Write-Host "Invalid selection"; }
    }
}

function Install-Programming {
    Clear-Host
    Write-Host "1) Visual Studio Code"
    Write-Host "2) Visual Studio Community Installer"
    Write-Host "3) Notepad ++"
    Write-Host "4) Go back"
    $choice = Read-Host -Prompt "Select a software to install"
    switch ($choice) {
        1 { Write-Host "Installing Visual Studio Code..."; Invoke-WebRequest -Uri "https://code.visualstudio.com/sha/download?build=stable&os=win32-x64-user" -OutFile "$env:TEMP\vscode_installer.exe"; Start-Process -FilePath "$env:TEMP\vscode_installer.exe" -ArgumentList "/silent", "/install"; Start-Sleep -Seconds 10 }
        2 { Write-Host "Installing Visual Studio Community Installer..."; Invoke-WebRequest -Uri "https://aka.ms/vs/16/release/vs_installer.exe" -OutFile "$env:TEMP\vs_installer.exe"; Start-Process -FilePath "$env:TEMP\vs_installer.exe" -ArgumentList "/silent", "/install"; Start-Sleep -Seconds 10 }
        3 { Write-Host "Installing Notepad ++..."; Invoke-WebRequest -Uri "https://github.com/notepad-plus-plus/notepad-plus-plus/releases/latest/download/npp.8.1.9.Installer.exe" -OutFile "$env:TEMP\npp_installer.exe"; Start-Process -FilePath "$env:TEMP\npp_installer.exe" -ArgumentList "/silent", "/install"; Start-Sleep -Seconds 10 }
        4 { return }
        default { Write-Host "Invalid selection"; }
    }
}

function Install-Social {
    Clear-Host
    Write-Host "1) Discord"
    Write-Host "2) Microsoft Teams"
    Write-Host "3) Vesktop"
    Write-Host "4) Whatsapp"
    Write-Host "5) Go back"
    $choice = Read-Host -Prompt "Select a software to install"
    switch ($choice) {
        1 { Write-Host "Installing Discord..."; Invoke-WebRequest -Uri "https://discord.com/api/download?platform=win" -OutFile "$env:TEMP\discord_installer.exe"; Start-Process -FilePath "$env:TEMP\discord_installer.exe" -ArgumentList "/silent", "/install"; Start-Sleep -Seconds 10 }
        2 { Write-Host "Installing Microsoft Teams..."; Invoke-WebRequest -Uri "https://aka.ms/GetTeams" -OutFile "$env:TEMP\teams_installer.exe"; Start-Process -FilePath "$env:TEMP\teams_installer.exe" -ArgumentList "/silent", "/install"; Start-Sleep -Seconds 10 }
        3 { Write-Host "Installing Vesktop..."; Invoke-WebRequest -Uri "https://github.com/Vencord/Vesktop/releases/download/v1.5.5/Vesktop-1.5.5-win.zip" -OutFile "$env:TEMP\vesktop_installer.zip"; Expand-Archive -Path "$env:TEMP\vesktop_installer.zip" -DestinationPath "$env:TEMP\vesktop"; Start-Process -FilePath "$env:TEMP\vesktop\Vesktop-1.5.5-win.exe" -ArgumentList "/silent", "/install"; Start-Sleep -Seconds 10 }
        4 { Write-Host "Installing Whatsapp..."; Invoke-WebRequest -Uri "https://web.whatsapp.com/desktop/windows/release/ia32/WhatsAppSetup.exe" -OutFile "$env:TEMP\whatsapp_installer.exe"; Start-Process -FilePath "$env:TEMP\whatsapp_installer.exe" -ArgumentList "/silent", "/install"; Start-Sleep -Seconds 10 }
        5 { return }
        default { Write-Host "Invalid selection"; }
    }
}

function Install-Utilities {
    Clear-Host
    Write-Host "1) WinRAR"
    Write-Host "2) 7zip"
    Write-Host "3) Free Download Manager"
    Write-Host "4) Steam"
    Write-Host "5) Msi AfterBurner"
    Write-Host "6) Go back"
    $choice = Read-Host -Prompt "Select a software to install"
    switch ($choice) {
        1 { Write-Host "Installing WinRAR..."; Invoke-WebRequest -Uri "https://www.win-rar.com/fileadmin/winrar-versions/winrar/winrar-x64-602.exe" -OutFile "$env:TEMP\winrar_installer.exe"; Start-Process -FilePath "$env:TEMP\winrar_installer.exe" -ArgumentList "/silent", "/install"; Start-Sleep -Seconds 10 }
        2 { Write-Host "Installing 7zip..."; Invoke-WebRequest -Uri "https://www.7-zip.org/a/7z1900-x64.exe" -OutFile "$env:TEMP\7zip_installer.exe"; Start-Process -FilePath "$env:TEMP\7zip_installer.exe" -ArgumentList "/silent", "/install"; Start-Sleep -Seconds 10 }
        3 { Write-Host "Installing Free Download Manager..."; Invoke-WebRequest -Uri "https://dn3.freedownloadmanager.org/latest/fdm5_x64_setup.exe" -OutFile "$env:TEMP\fdm_installer.exe"; Start-Process -FilePath "$env:TEMP\fdm_installer.exe" -ArgumentList "/silent", "/install"; Start-Sleep -Seconds 10 }
        4 { Write-Host "Installing Steam..."; Invoke-WebRequest -Uri "https://cdn.cloudflare.steamstatic.com/client/installer/SteamSetup.exe" -OutFile "$env:TEMP\steam_installer.exe"; Start-Process -FilePath "$env:TEMP\steam_installer.exe" -ArgumentList "/silent", "/install"; Start-Sleep -Seconds 10 }
        5 { Write-Host "Installing Msi AfterBurner..."; Invoke-WebRequest -Uri "https://download.msi.com/uti_exe/vga/MSIAfterburnerSetup.zip" -OutFile "$env:TEMP\afterburner_installer.zip"; Expand-Archive -Path "$env:TEMP\afterburner_installer.zip" -DestinationPath "$env:TEMP\afterburner"; Start-Process -FilePath "$env:TEMP\afterburner\MSIAfterburnerSetup.exe" -ArgumentList "/silent", "/install"; Start-Sleep -Seconds 10 }
        6 { return }
        default { Write-Host "Invalid selection"; }
    }
}

while ($true) {
    $choice = Show-Menu
    switch ($choice) {
        1 { Install-Browser }
        2 { Install-Drivers }
        3 { Install-WordProcessing }
        4 { Install-Programming }
        5 { Install-Social }
        6 { Install-Utilities }
        7 { exit }
        default { Write-Host "Invalid selection"; }
    }
}
