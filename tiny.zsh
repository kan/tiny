prompt_tiny_precmd () {
    vcs_info
    PROMPT=" %(?.%{${fg[green]}%}.%{${fg[red]}%})-> %{${fg[cyan]}%}%1~ $vcs_info_msg_0_ %{${reset_color}%}"
}

prompt_tiny_setup () {
    prompt_opts=(cr subst percent)

    autoload -Uz add-zsh-hook
    autoload -Uz vcs_info

    add-zsh-hook precmd prompt_tiny_precmd

    zstyle ':vcs_info:*' max-exports 2
    zstyle ':vcs_info:*' enable git hg
    zstyle ':vcs_info:*' formats "%F{blue}%s:(%F{yellow}%b%F{blue})"

    PROMPT=" %(?.%{${fg[green]}%}.%{${fg[red]}%})-> %{${fg[cyan]}%}%1~ %{${reset_color}%}"
}

prompt_tiny_setup "$@"
