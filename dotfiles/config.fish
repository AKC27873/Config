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

    # Nordic syntax highlighting
    set -g fish_color_normal '#D8DEE9'
    set -g fish_color_command '#88C0D0'
    set -g fish_color_param '#D8DEE9'
    set -g fish_color_option '#81A1C1'
    set -g fish_color_quote '#A3BE8C'
    set -g fish_color_error '#BF616A'
    set -g fish_color_comment '#616E88'
    set -g fish_color_operator '#81A1C1'
    set -g fish_color_redirection '#88C0D0'
    set -g fish_color_end '#81A1C1'
    set -g fish_color_escape '#D08770'
    set -g fish_color_autosuggestion '#616E88'

    # Search and selection
    set -g fish_color_search_match --background='#434C5E'
    set -g fish_color_selection --background='#3B4252'
    set -g fish_color_history_current --bold

    # Completion menus
    set -g fish_pager_color_prefix '#88C0D0' --bold
    set -g fish_pager_color_completion '#D8DEE9'
    set -g fish_pager_color_description '#81A1C1'
    set -g fish_pager_color_progress '#88C0D0'
end
