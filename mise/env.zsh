# mise activation
# This replaces asdf initialization and handles all tool PATH/completion setup automatically
if (( $+commands[mise] )); then
  eval "$(mise activate zsh)"
fi
