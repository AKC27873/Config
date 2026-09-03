# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

setopt APPEND_HISTORY
setopt SHARE_HISTORY
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_SPACE

bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/akc27/.zshrc'

autoload -Uz compinit
compinit

# Alias 

# --- Aliases ---
alias ll='ls -lah'
alias la='ls -A'
alias l='ls -CF'
alias ls='eza'

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

alias grep='grep --color=auto'


# syntax and auto complete
source ~/.zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# Keep syntax highlighting at the very end
source ~/.zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


#### ![NOTE]
# mkdir -p ~/.zsh/plugins
#
# git clone https://github.com/zsh-users/zsh-autosuggestions \
#   ~/.zsh/plugins/zsh-autosuggestions
#
# git clone https://github.com/zsh-users/zsh-syntax-highlighting \
#   ~/.zsh/plugins/zsh-syntax-highlighting

eval "$(starship init zsh)"

