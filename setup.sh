#!/usr/bin/env bash

# config git
git config --global user.name "Martin Juhasz"
git config --global user.email info@martinjuhasz.de
git config --global pull.rebase true
cp .gitignore_global ~/.gitignore_global
git config --global core.excludesfile ~/.gitignore_global

# copy bash config
cp .bashrc ~/.bashrc
cp .bash_profile ~/.bash_profile

# install homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# install pyenv and replace default python
brew install readline xz
sudo installer -pkg /Library/Developer/CommandLineTools/Packages/macOS_SDK_headers_for_macOS_10.14.pkg -target /
brew install pyenv
pyenv install 2.7.15
pyenv global 2.7.15

# setup default osx config
source osx.sh

# install default applications
source applications.sh

# setup and configure terminal
source terminal.sh
