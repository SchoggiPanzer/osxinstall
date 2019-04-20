#!/usr/bin/env bash

#make .bash_profile
touch ~/.bash_profile

#install Homebrew
xcode-select --install
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update && brew upgrade

#install git
brew install git

#install openssl
brew install openssl
ssh-keygen -t rsa -C “pascal.christen@intersim.ch”
ssh-add ~/.ssh/id_rsa

#install php 7.3
brew install php@7.3
echo 'export PATH="/usr/local/opt/php@7.3/bin:$PATH"' >> ~/.bash_profile
echo 'export PATH="/usr/local/opt/php@7.3/sbin:$PATH"' >> ~/.bash_profile
source ~/.bash_profile

#install dev components
brew install composer
brew install node
