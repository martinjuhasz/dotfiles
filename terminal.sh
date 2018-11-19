# setup terminal
brew cask install iterm2
mkdir ~/.terminal
(cd .terminal && git clone https://github.com/rupa/z.git)
brew cask install font-fira-mono-for-powerline
pip install powerline-shell
mkdir ~/Library/Application\ Support/iTerm2/DynamicProfiles/
cp iterm_profile.json ~/Library/Application\ Support/iTerm2/DynamicProfiles/
mkdir -p ~/.config/powerline-shell
cp powerline_config.json ~/.config/powerline-shell/config.json
touch ~/.hushlogin