#!/usr/bin/env bash

# config git
git config --global user.name "Martin Juhasz"
git config --global user.email info@martinjuhasz.de
cp .gitignore_global ~/.gitignore_global
git config --global core.excludesfile ~/.gitignore_global

# copy configs
cp .zshrc ~/.zshrc
cp .inputrc ~/.inputrc
cp -R .terminal ~/.terminal

# setup default osx config
source osx.sh

# install default applications
source applications.sh

# setup and configure terminal
source terminal.sh
