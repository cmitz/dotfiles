#!/bin/sh

#
# This script configures my Ruby development setup. Note that
# rvm is installed by the Homebrew install script.
#

if test ! $(which rvm)
then
  echo "Installing Ruby 2.4.1..."

  # Install the latest stable version of node
  rvm install 2.4.1 --default

  # Switch to the installed version
  rvm use 2.4.1

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
