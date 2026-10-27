if status is-interactive
    # ── Starship prompt ─────────────────────────────
    starship init fish | source
    set -g fish_greeting ""

    # ── Eza aliases ─────────────────────────────────
    alias ls 'eza --icons'
    alias ll 'eza -lah --icons'
    alias la 'eza -a --icons'
    alias lt 'eza --tree --icons'

    # ── Better man pages ────────────────────────────
    alias man batman

    # ── Go environment ──────────────────────────────
    set -gx GOPATH /opt/golang
    fish_add_path $GOPATH/bin

    # ── OneDark syntax highlighting ──────────────────
    set -g fish_color_normal ABB2BF
    set -g fish_color_command 98C379
    set -g fish_color_keyword C678DD
    set -g fish_color_quote 98C379
    set -g fish_color_redirection 56B6C2
    set -g fish_color_end C678DD
    set -g fish_color_error E06C75
    set -g fish_color_param ABB2BF
    set -g fish_color_comment 5C6370
    set -g fish_color_operator C678DD
    set -g fish_color_escape D19A66
    set -g fish_color_autosuggestion 5C6370
    set -g fish_color_cancel E06C75
    set -g fish_color_option 56B6C2
    set -g fish_color_valid_path --underline

    # ── Selection and search ────────────────────────
    set -g fish_color_selection --background=3E4451
    set -g fish_color_search_match --background=3E4451
    set -g fish_color_history_current --bold

    # ── Completion menu ─────────────────────────────
    set -g fish_pager_color_prefix 56B6C2 --bold
    set -g fish_pager_color_completion ABB2BF
    set -g fish_pager_color_description 7F848E
    set -g fish_pager_color_progress 61AFEF
    set -g fish_pager_color_selected_background --background=3E4451
    set -g fish_pager_color_selected_prefix 56B6C2 --bold
    set -g fish_pager_color_selected_completion ABB2BF
    set -g fish_pager_color_selected_description 7F848E
end
