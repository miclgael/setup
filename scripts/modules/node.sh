#!/bin/bash

# Copyright 2023 Michael Gale <https://www.michaelgale.dev/>

# Original copyright Mathias Bynens <https://mathiasbynens.be/>
# Original License can be found within the .github folder of this repo @ `.github/LICENSE-MIT.txt`

heading 'Running macos.sh'
info 'This script will install NVM and any node.js global packages.'

# check for nvm
if [[ $(test -f $HOME/.nvm) ]]; then
  info 'Installing nvm'
  curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
else
  warning 'nvm already installed'
fi

# check for node
if ! command -v node &> /dev/null; then
  info 'Installing node'
  nvm install node
  nvm alias default node
else
  warning 'node already installed'
fi

# check for eslint
if ! command -v eslint &> /dev/null; then
  info 'Installing eslint, ni, and netlify-cli - globally'
  npm install -g eslint @antfu/ni netlify-cli
else
  warning 'eslint already installed'
fi
