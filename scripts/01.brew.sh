#!/usr/bin/env bash

# brew.sh — https://mths.be/macos
# Copyright Mathias Bynens <https://mathiasbynens.be/>
# Original License can be found in root of this repo @ `./LICENSE-MIT.txt`

# My customisations on top of Mathias' original work can be observed
# via the git history on branch `mg-prefs`

# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Save Homebrew’s installed location.
BREW_PREFIX=$(brew --prefix)

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
ln -s "${BREW_PREFIX}/bin/gsha256sum" "${BREW_PREFIX}/bin/sha256sum"

# Install `wget` with IRI support.
# brew install wget --with-iri

# Install GnuPG to enable PGP-signing commits.
brew install gnupg

# Install more recent versions of some macOS tools.
# brew install vim --with-override-system-vi
brew install grep
brew install openssh
brew install php

# Install other useful binaries.
brew install git
brew install git-lfs

# Remove outdated versions from the cellar.
brew cleanup
