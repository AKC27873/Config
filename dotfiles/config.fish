if status is-interactive

    starship init fish | source
    set fish_greeting ""
    alias ls='eza --icons'
    alias ll='eza -lah --icons'
    alias la='eza -a --icons'
    alias lt='eza --tree --icons'
    alias man='batman'
    alias cat='bat -p'
    # batpipe
    set -gx GOPATH /opt/golang
    set -g fish_color_command '#89B4FA' # Blue
    set -g fish_color_param '#CDD6F4' # Text
    set -g fish_color_option '#89DCEB' # Sky
    set -g fish_color_quote '#A6E3A1' # Green
    set -g fish_color_error '#F38BA8' # Red
    set -g fish_color_comment '#6C7086' # Overlay 0
    set -g fish_color_operator '#CBA6F7' # Mauve
    set -g fish_color_redirection '#89DCEB' # Sky
    set -g fish_color_end '#89B4FA' # Blue
    set -g fish_color_escape '#FAB387' # Peach
    set -g fish_color_autosuggestion '#585B70' # Surface 2
end
