if status is-interactive
    set fish_greeting ""
    alias ls='eza --icons'
    alias ll='eza -lah --icons'
    alias la='eza -a --icons'
    alias lt='eza --tree --icons'
    alias man='batman'
    set -gx GOPATH /opt/golang
    # OneDark syntax highlighting
    set -g fish_color_command '#61AFEF' # blue
    set -g fish_color_param '#ABB2BF' # foreground
    set -g fish_color_option '#56B6C2' # cyan
    set -g fish_color_quote '#98C379' # green
    set -g fish_color_error '#E06C75' # red
    set -g fish_color_comment '#5C6370' # comment gray
    set -g fish_color_operator '#C678DD' # purple
    set -g fish_color_redirection '#56B6C2' # cyan
    set -g fish_color_end '#C678DD' # purple
    set -g fish_color_escape '#D19A66' # orange
    set -g fish_color_autosuggestion '#5C6370' # muted gray
end
