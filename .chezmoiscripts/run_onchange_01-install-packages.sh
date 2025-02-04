#!/bin/zsh

# Check if Homebrew is installed
if command -v brew &> /dev/null
then
    echo "Homebrew is already installed. Upgrading..."
    brew update && brew upgrade
else
    echo "Homebrew is not installed. Installing..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Install packages

# Check if Ghostty is installed
if command -v ghostty &> /dev/null
then
    echo "Ghostty is already installed."
else
    echo "Ghostty is not installed. Installing..."
    brew install --cask ghostty
fi

brew install --cask font-hack-nerd-font
