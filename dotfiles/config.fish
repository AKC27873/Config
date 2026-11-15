if status is-interactive
    # Starship prompt
    starship init fish | source
    set -g fish_greeting ""

    # Bat theme
    set -gx BAT_THEME Catppuccin Mocha

    # Eza aliases
    alias ls 'eza --icons'
    alias ll 'eza -lah --icons'
    alias la 'eza -a --icons'
    alias lt 'eza --tree --icons'

    # Better man pages
    alias man batman

    # Go environment
    set -gx GOPATH /opt/golang

    # Catppuccin Mocha syntax highlighting
    set -g fish_color_normal '#CDD6F4'
    set -g fish_color_command '#89B4FA'
    set -g fish_color_param '#CDD6F4'
    set -g fish_color_option '#F9E2AF'
    set -g fish_color_quote '#A6E3A1'
    set -g fish_color_error '#F38BA8'
    set -g fish_color_comment '#6C7086'
    set -g fish_color_operator '#89DCEB'
    set -g fish_color_redirection '#CBA6F7'
    set -g fish_color_end '#CBA6F7'
    set -g fish_color_escape '#FAB387'
    set -g fish_color_autosuggestion '#6C7086'

    # Search and selection
    set -g fish_color_search_match --background='#45475A'
    set -g fish_color_selection --background='#313244' --bold
    set -g fish_color_history_current --bold

    # Completion menus
    set -g fish_pager_color_prefix '#89B4FA' --bold
    set -g fish_pager_color_completion '#CDD6F4'
    set -g fish_pager_color_description '#6C7086'
    set -g fish_pager_color_progress '#CBA6F7'

    # Selected completion
    set -g fish_pager_color_selected_background --background='#313244'
    set -g fish_pager_color_selected_prefix '#CBA6F7' --bold
    set -g fish_pager_color_selected_completion '#CDD6F4' --bold
    set -g fish_pager_color_selected_description '#A6ADC8'
end
