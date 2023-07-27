!#/bin/bash
# Powershell

# install oh-my-posh
winget install JanDeDobbeleer.OhMyPosh -s winget

New-Item -Path $PROFILE -Type File -Force

"oh-my-posh init pwsh --config 'https://raw.githubusercontent.com/niklasfulle/Windows-Setup-Script/main/terminal/niklasfulle.omp.json' | Invoke-Expression" | Out-File -FilePath $PROFILE

. $PROFILE

