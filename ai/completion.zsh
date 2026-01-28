# enable opencode completions
if (( $+commands[opencode] )); then
  # If the completion file does not exist, generate it and then source it
  # Otherwise, source it and regenerate in the background
  if [[ ! -f "$ZSH_CACHE_DIR/completions/_opencode" ]]; then
    opencode completion >| "$ZSH_CACHE_DIR/completions/_opencode"
    source "$ZSH_CACHE_DIR/completions/_opencode"
  else
    source "$ZSH_CACHE_DIR/completions/_opencode"
    opencode completion >| "$ZSH_CACHE_DIR/completions/_opencode" &
  fi
fi
