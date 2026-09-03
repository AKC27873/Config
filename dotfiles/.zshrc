# ~/.zshrc

# --- History ---
HISTFILE="$HOME/.zsh_history"
HISTSIZE=10000
SAVEHIST=10000

setopt APPEND_HISTORY
setopt SHARE_HISTORY
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_SPACE

# --- Completion ---
autoload -Uz compinit
compinit

# Case-insensitive completion
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# Menu-style completion
zstyle ':completion:*' menu select

# --- Prompt ---
autoload -Uz colors && colors

PROMPT='%F{cyan}%n@%m%f:%F{blue}%~%f %# '

# --- Useful options ---
setopt AUTO_CD
setopt CORRECT
setopt INTERACTIVE_COMMENTS

# --- Aliases ---
alias ll='ls -lah'
alias la='ls -A'
alias l='ls -CF'
alias ls='eza'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

alias grep='grep --color=auto'

# --- Environment ---
export EDITOR="${EDITOR:-vim}"
export VISUAL="${VISUAL:-$EDITOR}"

# --- PATH ---
export PATH="$HOME/bin:$HOME/.local/bin:$PATH"

# --- Optional: local overrides ---
[[ -f "$HOME/.zshrc.local" ]] && source "$HOME/.zshrc.local"

# Starship
eval "$(starship init zsh)"

# syntax and auto complete
source ~/.zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# Keep syntax highlighting at the very end
source ~/.zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

