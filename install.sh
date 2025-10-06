#!/bin/bash
# ytplay Installation Script
# Installs ytplay and its dependencies on macOS

set -e

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Functions
print_header() {
    echo ""
    echo -e "${BLUE}========================================${NC}"
    echo -e "${GREEN}   ytplay - Installation Script${NC}"
    echo -e "${BLUE}========================================${NC}"
    echo ""
}

print_success() {
    echo -e "${GREEN}✅ $1${NC}"
}

print_error() {
    echo -e "${RED}❌ $1${NC}"
}

print_info() {
    echo -e "${BLUE}ℹ️  $1${NC}"
}

print_warning() {
    echo -e "${YELLOW}⚠️  $1${NC}"
}

check_macos() {
    if [[ "$OSTYPE" != "darwin"* ]]; then
        print_error "This script is designed for macOS only."
        exit 1
    fi
    print_success "macOS detected"
}

check_homebrew() {
    if ! command -v brew &> /dev/null; then
        print_error "Homebrew is not installed."
        print_info "Please install Homebrew first: https://brew.sh"
        exit 1
    fi
    print_success "Homebrew is installed"
}

install_dependency() {
    local dep=$1
    if command -v "$dep" &> /dev/null; then
        print_success "$dep is already installed"
    else
        print_info "Installing $dep..."
        brew install "$dep"
        print_success "$dep installed successfully"
    fi
}

install_dependencies() {
    echo ""
    print_info "Checking and installing dependencies..."
    echo ""
    
    install_dependency "yt-dlp"
    install_dependency "fzf"
    install_dependency "mpv"
    install_dependency "jq"
}

install_ytplay() {
    echo ""
    print_info "Installing ytplay script..."
    
    # Create ~/.local/bin if it doesn't exist
    mkdir -p "$HOME/.local/bin"
    
    # Get script directory
    SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
    
    # Copy ytplay to ~/.local/bin
    if [ -f "$SCRIPT_DIR/bin/ytplay" ]; then
        cp "$SCRIPT_DIR/bin/ytplay" "$HOME/.local/bin/ytplay"
        chmod +x "$HOME/.local/bin/ytplay"
        print_success "ytplay installed to ~/.local/bin/ytplay"
    else
        print_error "ytplay script not found in $SCRIPT_DIR/bin/"
        exit 1
    fi
}

check_path() {
    echo ""
    print_info "Checking PATH configuration..."
    
    if [[ ":$PATH:" == *":$HOME/.local/bin:"* ]]; then
        print_success "~/.local/bin is in your PATH"
    else
        print_warning "~/.local/bin is not in your PATH"
        print_info "Adding to your shell configuration..."
        
        # Detect shell
        if [ -n "$ZSH_VERSION" ]; then
            SHELL_RC="$HOME/.zshrc"
        elif [ -n "$BASH_VERSION" ]; then
            SHELL_RC="$HOME/.bashrc"
        else
            SHELL_RC="$HOME/.zshrc"  # Default to zsh
        fi
        
        # Add to shell RC if not already present
        if ! grep -q 'export PATH="$HOME/.local/bin:$PATH"' "$SHELL_RC" 2>/dev/null; then
            echo 'export PATH="$HOME/.local/bin:$PATH"' >> "$SHELL_RC"
            print_success "Added ~/.local/bin to PATH in $SHELL_RC"
            print_warning "Please run: source $SHELL_RC"
        fi
    fi
}

print_completion() {
    echo ""
    echo -e "${GREEN}========================================${NC}"
    echo -e "${GREEN}   Installation Complete! 🎉${NC}"
    echo -e "${GREEN}========================================${NC}"
    echo ""
    print_info "Usage: ytplay \"your search query\""
    echo ""
    print_info "Examples:"
    echo "  ytplay \"lofi hip hop\""
    echo "  ytplay \"documentary\" 50"
    echo ""
    print_info "Documentation:"
    echo "  README.md - Main documentation"
    echo "  docs/ytplay-quickstart.md - Quick start guide"
    echo "  docs/mpv-keyboard-shortcuts.md - Keyboard shortcuts"
    echo ""
    print_success "Enjoy ytplay! 🎧"
    echo ""
}

# Main installation flow
main() {
    print_header
    
    check_macos
    check_homebrew
    install_dependencies
    install_ytplay
    check_path
    print_completion
}

# Run main function
main
