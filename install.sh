#!/bin/bash

# VenColEcu Theme Installation Script
# Installs zsh configuration with Powerlevel10k and VenColEcu Zen theme
# Colors inspired by Venezuela 🇻🇪, Colombia 🇨🇴, and Ecuador 🇪🇨

set -e

echo "=========================================="
echo "  VenColEcu Theme Installation Script"
echo "=========================================="
echo ""

# Colors for output
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m' # No Color

# Backup existing files
backup_file() {
    if [ -f "$1" ] || [ -L "$1" ]; then
        echo -e "${YELLOW}Backing up existing $1 to $1.backup${NC}"
        mv "$1" "$1.backup"
    fi
}

# Install Powerlevel10k
echo -e "${GREEN}[1/4] Installing Powerlevel10k...${NC}"
if [ ! -d "$HOME/powerlevel10k" ]; then
    git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
    echo -e "${GREEN}✓ Powerlevel10k installed${NC}"
else
    echo -e "${YELLOW}✓ Powerlevel10k already installed${NC}"
fi

# Install zsh configuration
echo -e "${GREEN}[2/4] Installing zsh configuration...${NC}"

# Check if .zshrc exists
if [ -f "$HOME/.zshrc" ]; then
    # Check if our config is already added
    if grep -q "# === Dotfiles Configuration ===" "$HOME/.zshrc" 2>/dev/null; then
        echo -e "${YELLOW}⚠ Dotfiles configuration already exists in .zshrc${NC}"
        echo -e "${YELLOW}  Skipping to avoid duplicates${NC}"
    else
        echo -e "${YELLOW}Appending configuration to existing .zshrc${NC}"
        echo "" >> "$HOME/.zshrc"
        echo "# === Dotfiles Configuration ===" >> "$HOME/.zshrc"
        cat "$(dirname "$0")/zsh/.zshrc" >> "$HOME/.zshrc"
        echo -e "${GREEN}✓ Configuration appended to .zshrc${NC}"
    fi
else
    echo -e "${YELLOW}No existing .zshrc found, creating new one${NC}"
    cp "$(dirname "$0")/zsh/.zshrc" "$HOME/.zshrc"
    echo -e "${GREEN}✓ .zshrc created${NC}"
fi

# Install p10k themes
echo -e "${GREEN}[3/4] Installing Powerlevel10k themes...${NC}"
backup_file "$HOME/.p10k-ven-col-ecu-zen.zsh"
backup_file "$HOME/.p10k-cyvenpunk.zsh"
backup_file "$HOME/.p10k.zsh"

cp "$(dirname "$0")/zsh/.p10k-ven-col-ecu-zen.zsh" "$HOME/.p10k-ven-col-ecu-zen.zsh"
cp "$(dirname "$0")/zsh/.p10k-cyvenpunk.zsh" "$HOME/.p10k-cyvenpunk.zsh"
ln -sf "$HOME/.p10k-ven-col-ecu-zen.zsh" "$HOME/.p10k.zsh"
echo -e "${GREEN}✓ Powerlevel10k themes installed (VenColEcu Zen active)${NC}"

# Final message
echo ""
echo -e "${GREEN}[4/4] Installation complete!${NC}"
echo ""
echo -e "${YELLOW}Next steps:${NC}"
echo "1. Install Nerd Font (recommended: MesloLGS NF)"
echo "   Download from: https://github.com/romkatv/powerlevel10k#fonts"
echo ""
echo "2. Restart your terminal or run: source ~/.zshrc"
echo ""
echo "3. To switch themes, change the symlink:"
echo "   ln -sf ~/.p10k-cyvenpunk.zsh ~/.p10k.zsh"
echo ""
echo -e "${GREEN}Enjoy your new terminal! 🚀${NC}"
