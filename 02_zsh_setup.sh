#!/bin/bash
export PATH=/opt/homebrew/bin:$PATH

brew install zsh-autosuggestions
brew install zsh-syntax-highlighting

touch ~/.zshenv 
echo "ZDOTDIR=$HOME/.config/zsh" > ~/.zshenv

mkdir -p ~/.config
mkdir -p ~/.config/zsh

touch ~/.config/zsh/aliases
touch ~/.config/zsh/functions
cp .zshrc ~/.config/zsh/.zshrc