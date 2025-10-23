
# NVM Configuration
source "$HOME/.nvm/nvm.sh"

# Add ~/.local/bin to PATH for custom binaries
source "$HOME/.local/bin/env"

# Alias para Claude Code
alias clau='claude'

# Powerlevel10k
source ~/powerlevel10k/powerlevel10k.zsh-theme

# Cargar tema personalizado VenColEcu Zen (si existe .p10k.zsh)
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Colores de terminal menos brillantes (reduce fatiga visual)
# Cambiar texto por defecto a gris claro suave
echo -ne "\033]10;#C0C0C0\007"  # Foreground: gris claro suave
