!#/bin/bash
# Powershell

# install oh-my-posh
winget install JanDeDobbeleer.OhMyPosh -s winget

New-Item -Path $PROFILE -Type File -Force

"oh-my-posh init pwsh --config 'C:\Users\Niklas\AppData\Local\Programs\oh-my-posh\themes\niklasfulle.omp.json' | Invoke-Expression" | Out-File -FilePath $PROFILE

. $PROFILE

