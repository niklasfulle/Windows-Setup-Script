!#/bin/bash
# WSL 

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

(echo; echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"') >> /home/niklas/.profile
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

brew install jandedobbeleer/oh-my-posh/oh-my-posh