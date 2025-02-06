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


#brew install --cask font-hack-nerd-font
