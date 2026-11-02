if status is-interactive
    # Starship prompt
    starship init fish | source
    set -g fish_greeting ""

    # Bat theme
    set -gx BAT_THEME OneDark

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
    set -g fish_color_normal '#ABB2BF'
    set -g fish_color_command '#61AFEF'
    set -g fish_color_param '#ABB2BF'
    set -g fish_color_option '#D19A66'
    set -g fish_color_quote '#98C379'
    set -g fish_color_error '#E06C75'
    set -g fish_color_comment '#5C6370'
    set -g fish_color_operator '#56B6C2'
    set -g fish_color_redirection '#C678DD'
    set -g fish_color_end '#C678DD'
    set -g fish_color_escape '#D19A66'
    set -g fish_color_autosuggestion '#5C6370'

    # Search and selection
    set -g fish_color_search_match --background='#3E4451'
    set -g fish_color_selection --background='#3E4451'
    set -g fish_color_history_current --bold

    # Completion menus
    set -g fish_pager_color_prefix '#61AFEF' --bold
    set -g fish_pager_color_completion '#ABB2BF'
    set -g fish_pager_color_description '#5C6370'
    set -g fish_pager_color_progress '#C678DD'

    # Selected completion
    set -g fish_pager_color_selected_background --background='#3E4451'
    set -g fish_pager_color_selected_prefix '#61AFEF' --bold
    set -g fish_pager_color_selected_completion '#ABB2BF'
    set -g fish_pager_color_selected_description '#ABB2BF'
end
