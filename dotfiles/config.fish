if status is-interactive

    starship init fish | source
    set fish_greeting ""
    alias ls='eza --icons'
    alias ll='eza -lah --icons'
    alias la='eza -a --icons'
    alias lt='eza --tree --icons'
    set -gx GOPATH /opt/golang
end
