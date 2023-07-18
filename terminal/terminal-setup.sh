!#/bin/bash
# Powershell

# install oh-my-posh
winget install JanDeDobbeleer.OhMyPosh -s winget

New-Item -Path $PROFILE -Type File -Force

"oh-my-posh init pwsh --config 'C:\Users\Niklas\AppData\Local\Programs\oh-my-posh\themes\niklasfulle.omp.json' | Invoke-Expression" | Out-File -FilePath $PROFILE

. $PROFILE

# WSL 

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

(echo; echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"') >> /home/niklas/.profile
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

brew install jandedobbeleer/oh-my-posh/oh-my-posh