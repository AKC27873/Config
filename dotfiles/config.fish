if status is-interactive

    starship init fish | source
    set fish_greeting ""
    alias ls='eza --icons'
    alias ll='eza -lah --icons'
    alias la='eza -a --icons'
    alias lt='eza --tree --icons'
    alias grep='rg --color=always'
    set -gx GOPATH /opt/golang
    # Syntax highlighting
    set -g fish_color_command green
    set -g fish_color_param normal
    set -g fish_color_option cyan
    set -g fish_color_quote yellow
    set -g fish_color_error red
    set -g fish_color_comment brblack
end
