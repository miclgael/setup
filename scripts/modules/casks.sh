#!/bin/bash

# Copyright 2023 Michael Gale <https://www.michaelgale.dev/>

# Original copyright Mathias Bynens <https://mathiasbynens.be/>
# Original License can be found within the .github folder of this repo @ `.github/LICENSE-MIT.txt`

heading 'Running casks.sh'
info "This script will install casks (macOS Applictions) via Homebrew."

info '👩‍💻 Installing development software'
brew install --cask iterm2 visual-studio-code mamp codekit forklift tableplus tower obsidian insomnia docker

info '💻 Installing web browsers'
brew install --cask firefox homebrew/cask-versions/firefox-developer-edition google-chrome

info '🎨 Installing design software'
brew install --cask figma nucleo imageoptim

info '🛡️ Installing security and backup software'
brew install --cask 1password nordvpn carbon-copy-cloner dropbox

info '💬 Installing chat and teamwork software'
brew install --cask microsoft-teams onedrive slack discord signal teamviewer zoom megasync

info '🎹 Installing music and multimedia software'
brew install --cask ableton-live-suite loopback handbrake obs elektron-transfer vlc && \ 
brew install progrium/taps/topframe && \
brew install blackhole-16ch && \
brew install switchaudio-osx

info '🚀 Installing helpful utils'
brew install --cask alfred bartender rocket bettertouchtool && \
brew install --cask homebrew/cask-drivers/elgato-control-center && \
brew install --cask syncthing && \
brew install --cask cleanshot && \
brew install speedtest-cli 

info '🎮 Installing some distractions'
brew install --cask altserver steam plex plexamp && \
brew install --cask homebrew/cask-drivers/sony-ps-remote-play && \
brew install --cask blender lycheeslicer 