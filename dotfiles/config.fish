if status is-interactive
    # Starship prompt
    starship init fish | source
    set -g fish_greeting ""

    # Bat theme
    set -gx BAT_THEME Dracula

    # Eza aliases
    alias ls 'eza --icons'
    alias ll 'eza -lah --icons'
    alias la 'eza -a --icons'
    alias lt 'eza --tree --icons'

    # Better man pages
    alias man batman

    # Go environment
    set -gx GOPATH /opt/golang

    # Dracula syntax highlighting
    set -g fish_color_normal '#F8F8F2'
    set -g fish_color_command '#8BE9FD'
    set -g fish_color_param '#F8F8F2'
    set -g fish_color_option '#BD93F9'
    set -g fish_color_quote '#F1FA8C'
    set -g fish_color_error '#FF5555'
    set -g fish_color_comment '#6272A4'
    set -g fish_color_operator '#FF79C6'
    set -g fish_color_redirection '#BD93F9'
    set -g fish_color_end '#FF79C6'
    set -g fish_color_escape '#FFB86C'
    set -g fish_color_autosuggestion '#6272A4'

    # Search and selection
    set -g fish_color_search_match --background='#44475A'
    set -g fish_color_selection --background='#44475A' --bold
    set -g fish_color_history_current --bold

    # Completion menus
    set -g fish_pager_color_prefix '#BD93F9' --bold
    set -g fish_pager_color_completion '#F8F8F2'
    set -g fish_pager_color_description '#6272A4'
    set -g fish_pager_color_progress '#FF79C6'

    # Selected completion
    set -g fish_pager_color_selected_background --background='#44475A'
    set -g fish_pager_color_selected_prefix '#FF79C6' --bold
    set -g fish_pager_color_selected_completion '#F8F8F2' --bold
    set -g fish_pager_color_selected_description '#6272A4'
end
