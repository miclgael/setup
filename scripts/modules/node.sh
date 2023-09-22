#!/bin/bash
# Copyright 2023 Michael Gale <https://www.michaelgale.dev/>

heading 'Running node.sh'
info 'This script will install NVM and any node.js global packages.'

LATEST_NVM=$({
  curl -s https://api.github.com/repos/nvm-sh/nvm/releases | \
    jq -r 'first(.[].tag_name | select(test("^v[0-9]")))'
})

# No need to compare versions, NVM will install or update from the same script.
info 'Installing/updating nvm'
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/$LATEST_NVM/install.sh | bash

# check for node
if ! command -v node &> /dev/null; then
  . ~/.nvm/nvm.sh
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
