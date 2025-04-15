Write-Host "--- Installation script for the Windows standard programmes and tools - Stage (1/3) - Niklas Fulle ---" -ForegroundColor blue

$tools =
@([pscustomobject]@{name="cURL";winget='cURL.cURL'},
[pscustomobject]@{name="Terminal";winget="Microsoft.WindowsTerminal"},
[pscustomobject]@{name="Powershell";winget="Microsoft.PowerShell"},
[pscustomobject]@{name="PowerToys";winget="Microsoft.PowerToys"},
[pscustomobject]@{name="WinRAR";winget="RARLab.WinRAR"},
[pscustomobject]@{name="7zip";winget="7zip.7zip"},
[pscustomobject]@{name="Logitech G HUB";winget="Logitech.GHUB"},
[pscustomobject]@{name="Logi Options+";winget="Logitech.OptionsPlus"},
[pscustomobject]@{name="Oh My Posh";winget="JanDeDobbeleer.OhMyPosh"},
[pscustomobject]@{name="Brave";winget="Brave.Brave"},
[pscustomobject]@{name="Git";winget="Git.Git"})

$count = $tools.Length

for ($i = 0; $i -lt $count; $i++)
{
    Write-Host "Try to install $($tools[$i].name) ($($i +1)/$($count))" -ForegroundColor yellow

    try { 
        $output = (winget install -e -h --id $tools[$i].winget --source winget)
        if ($output -like "*Es wurde bereits ein vorhandenes Paket gefunden.*"){
            Write-Host "Done: Windows $($tools[$i].name) allready installed" -ForegroundColor yellow
        } else {
            Write-Host "Done: Windows $($tools[$i].name) installed" -ForegroundColor green
        }
    }
    catch { 
        Write-Host "Error: Fail to install $($tools[$i].name)" -ForegroundColor red
    }
}

Write-Host "--- Installation script for the Windows standard programmes and tools - Stage (2/3) - Niklas Fulle ---" -ForegroundColor blue

$programmes =
@([pscustomobject]@{name="Visual Studio Code";winget='Microsoft.VisualStudioCode'},
[pscustomobject]@{name="Visual Studio";winget="Microsoft.VisualStudio.2022.Community"},
[pscustomobject]@{name="JetBrains Toolbox";winget="JetBrains.Toolbox"},
[pscustomobject]@{name="JetBrains IntelliJIDEA";winget="JetBrains.IntelliJIDEA.Community"},
[pscustomobject]@{name="JetBrains PyCharm";winget="JetBrains.PyCharm.Community"},
[pscustomobject]@{name="MongoDB";winget="MongoDB.Server"},
[pscustomobject]@{name="NVM";winget="CoreyButler.NVMforWindows"})

$count = $programmes.Length

for ($i = 0; $i -lt $count; $i++)
{
    Write-Host "Try to install $($programmes[$i].name) ($($i +1)/$($count))" -ForegroundColor yellow

    try { 
        $output = (winget install -e -h --id $programmes[$i].winget --source winget)
        if ($output -like "*Es wurde bereits ein vorhandenes Paket gefunden.*"){
            Write-Host "Done: Windows $($programmes[$i].name) allready installed" -ForegroundColor yellow
        } else {
            Write-Host "Done: Windows $($programmes[$i].name) installed" -ForegroundColor green
        }
    }
    catch { 
        Write-Host "Error: Fail to install $($programmes[$i].name)" -ForegroundColor red
    }
}

Write-Host "--- Installation script for the Windows standard programmes and tools - Stage (3/3) - Niklas Fulle ---" -ForegroundColor blue

$extras =
@([pscustomobject]@{name="Bitwarden";winget='Bitwarden.Bitwarden'},
[pscustomobject]@{name="Firefox";winget="Firefox.Firefox"},
[pscustomobject]@{name="CPUID CPU-Z";winget="CPUID.CPU-Z"},
[pscustomobject]@{name="CPUID HWMonitor";winget="CPUID.HWMonitor"},
[pscustomobject]@{name="GIGABYTE Control Center";winget="GIGABYTE.GigabyteControlCenter"},
[pscustomobject]@{name="HWiNFO® 64";winget="REALiX.HWiNFO"},
[pscustomobject]@{name="PostgreSQL 15";winget="PostgreSQL.PostgreSQL.15"},
[pscustomobject]@{name="Dropbox";winget="Dropbox.Dropbox"},
[pscustomobject]@{name="Steam";winget="Valve.Steam"},
[pscustomobject]@{name="Ubisoft Connect";winget="Ubisoft.Connect"},
[pscustomobject]@{name="Wireshark";winget="WiresharkFoundation.Wireshark"},
[pscustomobject]@{name="Lightshot";winget="Skillbrains.Lightshot"},
[pscustomobject]@{name="GOG GALAXY";winget="GOG.Galaxy"},
[pscustomobject]@{name="TechPowerUp GPU-Z";winget="TechPowerUp.GPU-Z"},
[pscustomobject]@{name="EA app";winget="ElectronicArts.EADesktop"},
[pscustomobject]@{name="Discord";winget="Discord.Discord"},
[pscustomobject]@{name="Figma";winget="Figma.Figma"},
[pscustomobject]@{name="MongoDB Compass";winget="MongoDB.Compass.Full"},
[pscustomobject]@{name="Postman";winget="Postman.Postman"},
[pscustomobject]@{name="Thonny";winget="AivarAnnamaa.Thonny"},
[pscustomobject]@{name="Spotify";winget="Spotify.Spotify"},
[pscustomobject]@{name="pgAdmin 4";winget="PostgreSQL.pgAdmin"},
[pscustomobject]@{name="Telegram Desktop";winget="Telegram.TelegramDesktop"},
[pscustomobject]@{name="TeamViewer";winget="TeamViewer.TeamViewer"},
[pscustomobject]@{name="Notepad++";winget="Notepad++.Notepad++"},
[pscustomobject]@{name="VLC";winget="VideoLAN.VLC"},
[pscustomobject]@{name="Adobe Acrobat Reader";winget="Adobe.Acrobat.Reader.64-bit"},
[pscustomobject]@{name="Paint.NET";winget="dotPDN.PaintDotNet"},
[pscustomobject]@{name="Google Drive";winget="Google.Drive"},
[pscustomobject]@{name="MEGASync";winget="Mega.MEGASync"})

$count = $extras.Length

for ($i = 0; $i -lt $count; $i++)
{
    Write-Host "Try to install $($extras[$i].name) ($($i +1)/$($count))" -ForegroundColor yellow

    try { 
        $output = (winget install -e -h --id $extras[$i].winget --source winget)
        if ($output -like "*Es wurde bereits ein vorhandenes Paket gefunden.*"){
            Write-Host "Done: Windows $($extras[$i].name) allready installed" -ForegroundColor yellow
        } else {
            Write-Host "Done: Windows $($extras[$i].name) installed" -ForegroundColor green
        }
    }
    catch { 
        Write-Host "Error: Fail to install $($extras[$i].name)" -ForegroundColor red
    }
}
