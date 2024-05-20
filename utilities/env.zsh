
# direnv
if (( $+commands[direnv] )); then
    eval "$(direnv hook zsh)"
fi

# fzf
if (( $+command[fzf] )); then
    eval "$(fzf --zsh)"
fi
