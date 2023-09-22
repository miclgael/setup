#!/bin/bash

# Copyright 2023 Michael Gale <https://www.michaelgale.dev/>

# Original copyright Mathias Bynens <https://mathiasbynens.be/>
# Original License can be found within the .github folder of this repo @ `.github/LICENSE-MIT.txt`

# Install command-line tools using Homebrew.

# Save Homebrew’s installed location.
BREW_PREFIX=$(brew --prefix)

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.

info 'Installing GNU core utilities (those that come with macOS are outdated)'
brew install coreutils
ln -s "${BREW_PREFIX}/bin/gsha256sum" "${BREW_PREFIX}/bin/sha256sum"

# Install more GNU utils and other useful binaries.
info 'Installing GNU versions of grep, openssh, php, composer and jq'
brew install grep openssh php composer jq

# Install micro
info 'Installing alternative terminal-based editor'
brew install micro

# Install other useful binaries.
info 'Installing other useful binaries'
brew install git git-lfs

# Install Zsh, Oh My Zsh, and Spaceship ZSH theme
info 'Installing zsh'
brew install zsh

# Install Oh My Zsh (not from a brew package, but related to the above)
if [[ $(test -f $HOME/.oh-my-zsh) ]]; then
  info 'Installing Oh My Zsh ... please follow the prompts...'
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
else
  warning 'Oh my zsh already installed'
fi

# Install Spaceship ZSH theme, and other zsh plugins.
info 'Installing Spaceship ZSH theme, and other zsh plugins'
brew install spaceship zsh-autosuggestions zsh-syntax-highlighting

# Install GnuPG to enable PGP-signing commits.
info 'Installing GNUPG and PIN entry for macOS' 
brew install gnupg pinentry-mac
warning 'Please note; GNUPG and PIN entry will require manual configuration. \nPlease follow the instructions at https://github.com/miclgael/setup#configure-git-signing-gnupg'

# Install Fira Code font
info 'Installing Fira Code font'
brew tap homebrew/cask-fonts && \
brew install font-fira-code

# Install google web fonts (also not a brew package... but whatever!)
if [[ $(test -f /Library/Fonts/Roboto-Black.ttf) ]]; then
  info 'Installing Google web fonts ... this will take some time (approx 5 mins)...'
  curl https://raw.githubusercontent.com/qrpike/Web-Font-Load/master/install.sh | bash
else
  warning 'Google web fonts already installed'
fi

# Remove outdated versions from the cellar.
brew cleanup
