
# enable kubectl completion
if test "$(which kubectl)"; then
    source <(kubectl completion zsh)
fi
