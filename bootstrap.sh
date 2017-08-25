#!/usr/bin/env bash
case $(id -u) in
    0) 
        echo first: running as root
        echo doing the root tasks...
        apt-get install curl software-properties-common python-software-properties npm git -y
        npm config set bin-links false
        sudo -u ubuntu -i $0  # script calling itself as the vagrant user
        ;;
    *) 
        echo then: running as vagrant user
        echo doing the vagrant users tasks
        # install latest nvm
        git clone https://github.com/creationix/nvm.git ~/.nvm && cd ~/.nvm && git checkout `git describe --abbrev=0 --tags`
        source ~/.nvm/nvm.sh
        echo "source ~/.nvm/nvm.sh" >> ~/.bashrc

        # install latest stable node.js
        echo "Installing node.js... (please be patient)"
        nvm install stable &> /dev/null
        nvm alias default stable

        echo INSTALLING ANGULAR-CLI
        npm install --save express angularfire2 firebase
        npm install -g @angular/cli@latest typescript@latest --save

        echo STARTING HEROKU INSTALLATION
        sudo add-apt-repository "deb https://cli-assets.heroku.com/branches/stable/apt ./"
        curl -L https://cli-assets.heroku.com/apt/release.key | sudo apt-key add -
        sudo apt-get update
        sudo apt-get install heroku expect -y
        ;;
esac



