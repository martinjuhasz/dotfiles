# install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# install NVM
mkdir ~/.nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash

# install pyenv
brew install readline xz
brew install pyenv

# direnv
brew install direnv

# install osx applications
brew install --cask firefox
brew install --cask iterm2
brew install --cask visual-studio-code
brew install --cask 1password
brew install --cask sublime-merge
brew install --cask telegram
brew install --cask bartender
brew install --cask alfred
brew install --cask vlc
brew install --cask spotify
brew install --cask appcleaner
brew install --cask itsycal
brew install --cask rectangle
brew tap homebrew/cask-fonts
brew install --cask font-fira-code
brew install --cask rustdesk
brew install --cask balenaetcher
brew install --cask karabiner-elements
brew install --cask discord
brew install --cask prusaslicer
brew install --cask autodesk-fusion360
brew install --cask docker
brew install --cask insomnia