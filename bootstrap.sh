#!/usr/bin/env bash

sudo add-apt-repository "deb https://cli-assets.heroku.com/branches/stable/apt ./"
curl -L https://cli-assets.heroku.com/apt/release.key | sudo apt-key add -
sudo apt-get update
sudo apt-get install heroku expect -y

# cd ../../var/www
# mkdir ekleipsis-hello-world
# cd ekleipsis-hello-world/
# git init
# heroku git:remote -a ekleipsis-hello-world
