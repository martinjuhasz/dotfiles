# setup terminal
mkdir ~/.terminal
touch ~/.hushlogin

# install z history shortcuts
(cd ~/.terminal && git clone https://github.com/rupa/z.git)

# add iterm shell extention
curl -L https://iterm2.com/shell_integration/zsh -o ~/.terminal/.iterm2_shell_integration.zsh

# install oh-my-zsh
ZSH=~/.terminal/.oh-my-zsh sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/.terminal/.oh-my-zsh/custom/themes/powerlevel10k

# update zsh file
cp .zshrc ~/.zshrc