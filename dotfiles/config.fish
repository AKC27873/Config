if status is-interactive
    # Starship prompt
    starship init fish | source
    set -g fish_greeting ""

    # Eza aliases
    alias ls 'eza --icons'
    alias ll 'eza -lah --icons'
    alias la 'eza -a --icons'
    alias lt 'eza --tree --icons'

    # Better man pages
    alias man batman

    # Go environment
    set -gx GOPATH /opt/golang

    # OneDark syntax highlighting
    set -g fish_color_normal '#ABB2BF' # Soft gray
    set -g fish_color_command '#61AFEF' # Muted blue
    set -g fish_color_param '#ABB2BF' # Soft gray
    set -g fish_color_option '#56B6C2' # Muted cyan
    set -g fish_color_quote '#98C379' # Soft green
    set -g fish_color_error '#E06C75' # Muted red
    set -g fish_color_comment '#5C6370' # Gray
    set -g fish_color_operator '#C678DD' # Muted purple
    set -g fish_color_redirection '#56B6C2' # Muted cyan
    set -g fish_color_end '#C678DD' # Muted purple
    set -g fish_color_escape '#D19A66' # Soft orange
    set -g fish_color_autosuggestion '#5C6370' # Dim gray

    # Search and selection
    set -g fish_color_search_match --background='#3E4451'
    set -g fish_color_selection --background='#3E4451'
    set -g fish_color_history_current --bold
end
