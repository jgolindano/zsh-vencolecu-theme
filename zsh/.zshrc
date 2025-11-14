
# NVM Configuration
source "$HOME/.nvm/nvm.sh"

# Add ~/.local/bin to PATH for custom binaries
source "$HOME/.local/bin/env"

# Alias para Claude Code
alias clau='claude'

# Powerlevel10k
source ~/powerlevel10k/powerlevel10k.zsh-theme

# Cargar tema personalizado Venezuela Zen (si existe .p10k.zsh)
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
