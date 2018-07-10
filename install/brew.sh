#!/bin/bash

# Installs Homebrew and some of the common dependencies needed/desired for software development

# Ask for the administrator password upfront
sudo -v

# Check for Homebrew and install it if missing
if test ! $(which brew)
then
  echo "Installing Homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew tap Goles/battery

# Make sure we’re using the latest Homebrew
brew update

# Upgrade any already-installed formulae
brew upgrade

apps=(
    rbenv
    nvm
    coreutils
    moreutils
    findutils
    ffmpeg --with-libvpx
    fortune
    cowsay
    git
    git-extras
    hub
    gnu-sed --with-default-names
    grep --with-default-names
    brew-cask-completion
    mtr
    imagemagick --with-webp
    python
    source-highlight
    tree
    wget
    wifi-password
    z
)

brew install "${apps[@]}"

# Remove outdated versions from the cellar
brew cleanup
