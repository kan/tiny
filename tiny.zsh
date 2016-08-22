prompt_tiny_precmd () {
    vcs_info
    PROMPT=" %(?.%F{47}.%F{197})-> %F{75}%1~ $vcs_info_msg_0_ %f"
}

prompt_tiny_setup () {
    prompt_opts=(cr subst percent)

    autoload -Uz add-zsh-hook
    autoload -Uz vcs_info

    add-zsh-hook precmd prompt_tiny_precmd

    zstyle ':vcs_info:*' max-exports 2
    zstyle ':vcs_info:*' enable git hg
    zstyle ':vcs_info:*' formats "%F{27}%s:(%F{221}%b%F{27})"

    PROMPT=" %(?.%F{47}.%F{197})-> %F{75}%}%1~ %f"
}

prompt_tiny_setup "$@"
