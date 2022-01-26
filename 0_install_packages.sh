#!/bin/bash

echo "installing homebrew"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo "installing a bunch of missing packages"
brew install exiftool
brew install zsh-syntax-highlighting
brew install zsh-autosuggestions
brew install nmap
brew install wget
brew install speedtest-cli

echo "installing a bunch of casks"
brew install --cask iterm2
brew install --cask firefox
brew install --cask sublime-text
brew install --cask spotify
brew install --cask pycharm
brew install --cask google-chrome
brew install --cask chromedriver
brew install --cask visual-studio-code
brew install --cask anaconda
brew install --cask slack
brew install --cask cyberduck
brew install --cask brave-browser
brew install --cask nosleep
brew install --cask vlc
brew install --cask postico
brew install --cask docker
brew install --cask signal
brew install --cask nextcloud
brew install --cask microsoft-remote-desktop
brew install --cask macs-fan-control
brew install --cask transmission
brew install --cask joplin
brew install --cask zoom
brew install --cask miniconda
brew install --cask lulu
brew cleanup    

echo "creating conda envs"
conda create --name py39 python=3.9
conda create --name py310 python=3.10
