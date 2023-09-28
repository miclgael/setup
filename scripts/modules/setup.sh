#!/bin/bash

# Copyright 2023 Michael Gale <https://www.michaelgale.dev/>

# Original copyright Mathias Bynens <https://mathiasbynens.be/>
# Original License can be found within the .github folder of this repo @ `.github/LICENSE-MIT.txt`

heading 'Running setup.sh'
info "This script will install Homebrew, Spaceship ZSH theme, and other useful tools.\nPlease enter your password - the sudo session should stay alive for the entire process."

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until `.macos` has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

info "Thanks! First time round, this script will take about 35 minutes to complete. You can go grab a coffee or something.\n"

sleep 5

# Install homebrew if not already installed
if ! command -v brew &> /dev/null; then
  info 'Installing Homebrew'
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
  warning 'Homebrew already installed'
fi

# Update homebrew
info 'Updating Homebrew (this may take a while)...'
brew update

# Upgrade any already-installed formulae.
info 'Upgrading Homebrew'
brew upgrade
