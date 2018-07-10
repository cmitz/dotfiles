#!/bin/sh

#
# This script configures my Ruby development setup. Note that
# rvm is installed by the Homebrew install script.
#

if test ! $(which rbenv)
then
  echo "Installing Ruby 2.5.1..."

  # Install the latest stable version of node
  rbenv install 2.5.1

  # Switch to the installed version
  rbenv global 2.5.1

  rbenv init

fi

# Globally install with npm
# To list globally installed npm packages and version: npm list -g --depth=0
#
# Some descriptions:
#
# diff-so-fancy — sexy git diffs
# git-recent — Type `git recent` to see your recent local git branches
# git-open — Type `git open` to open the GitHub page or website for a repository
packages=(
    bundler
    mailcatcher
    pry
)

gem install "${packages[@]}"
