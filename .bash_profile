
# rbenv
eval "$(rbenv init -)"


# ⌘c/⌘v from https://github.com/mathiasbynens/dotfiles
# Load ~/.bash_prompt, ~/.exports, ~/.aliases, ~/.functions and ~/.extra
# ~/.extra can be used for settings you don’t want to commit
for file in ~/.{bash_prompt,exports,aliases,functions,extra}; do
	[ -r "$file" ] && source "$file"
done
unset file

# Bash completition
if [ -f /opt/local/etc/profile.d/bash_completion.sh ]; then
	. /opt/local/etc/profile.d/bash_completion.sh
fi

# Tab completition
[ -f ~/.git-bash-completion.sh ] && . ~/.git-bash-completion.sh

# Case insensitive tab completition
bind "set completion-ignore-case on"
