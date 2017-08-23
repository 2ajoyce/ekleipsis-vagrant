#!/usr/bin/env bash

sudo add-apt-repository "deb https://cli-assets.heroku.com/branches/stable/apt ./"
curl -L https://cli-assets.heroku.com/apt/release.key | sudo apt-key add -
sudo apt-get update
sudo apt-get install heroku expect -y

echo APT-GET INSTALL INSTALL BUILD-ESSENTIAL, CHECKINSTALL, LIBSSL-DEV
sudo apt-get install build-essential checkinstall libssl-dev

echo INSTALLING NVM
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.2/install.sh | bash

echo INSTALLING NPM
npm install -g npm

echo INSTALLING NODE 8.4.0
nvm install 8.4.0
nvm use 8.4.0
nvm alias default 8.4.0

echo INSTALLING ANGULAR-CLI
npm install -g @angular/cli@latest typescript@latest --save

