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
    # Nordic syntax highlighting
    set -g fish_color_command '#81A1C1' # frost blue
    set -g fish_color_param '#D8DEE9' # snowstorm foreground
    set -g fish_color_option '#88C0D0' # cyan
    set -g fish_color_quote '#A3BE8C' # green
    set -g fish_color_error '#BF616A' # red
    set -g fish_color_comment '#616E88' # muted blue-gray
    set -g fish_color_operator '#B48EAD' # purple
    set -g fish_color_redirection '#88C0D0' # cyan
    set -g fish_color_end '#81A1C1' # frost blue
    set -g fish_color_escape '#D08770' # orange
    set -g fish_color_autosuggestion '#4C566A' # polar night gray
end
