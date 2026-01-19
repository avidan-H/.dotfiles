
# enable pdm completion
# adapted from the kubectl oh-my-zsh plugin https://github.com/ohmyzsh/ohmyzsh/blob/master/plugins/kubectl/kubectl.plugin.zsh
if (( $+commands[pdm] )); then
  # If the completion file does not exist, generate it and then source it
  # Otherwise, source it and regenerate in the background
  if [[ ! -f "$ZSH_CACHE_DIR/completions/_pdm" ]]; then
    pdm completion zsh >| "$ZSH_CACHE_DIR/completions/_pdm"
    autoload -U "$ZSH_CACHE_DIR/completions/_pdm"
  else
    unfunction _pdm
    autoload -U "$ZSH_CACHE_DIR/completions/_pdm"
    pdm completion zsh >| "$ZSH_CACHE_DIR/completions/_pdm" &|
  fi
fi

# enable uv completions
if (( $+commands[uv] )); then
  eval "$(uv generate-shell-completion zsh)"
fi

# enable uvx completion (uvx is an alias for uv tool run - analagous to pipx run)
if (( $+commands[uvx] )); then
  eval "$(uvx --generate-shell-completion zsh)"
fi
