!#/bin/bash
# update and upgrade

sudo apt update && sudo apt upgrade -y

# install curl

sudo apt install curl -y

# install git

sudo apt install git -y

# install nvm

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash

# install node

nvm install node

