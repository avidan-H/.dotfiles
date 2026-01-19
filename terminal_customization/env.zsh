# oh-my-zsh related
ZSH_THEME="robbyrussell"
plugins=(
    git
    macos
    docker
    docker-compose
    mise
    brew
    fzf
    golang
    poetry
)
if [[ -e "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting" ]]; then
    plugins=("${plugins[@]}" zsh-syntax-highlighting)
fi
if [[ -e "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}"/plugins/zsh-autosuggestions ]]; then
    plugins=("${plugins[@]}" zsh-autosuggestions)
fi

source $ZSH/oh-my-zsh.sh

# iterm2 shell integration script
if [[ -e "$HOME"/.dotfiles/terminal_customization/.iterm2_shell_integration.zsh ]]; then
    echo "Installing iterm2 shell integration"
    source "$HOME"/.dotfiles/terminal_customization/.iterm2_shell_integration.zsh
fi
