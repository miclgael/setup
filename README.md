# setup
Notes for setting up a new macOS dev environment *(Follow at your own risk / benefit)*

## Todo: 
- [ ] Make a bash script that automates some of this.
- [ ] Sync VScode extensions

# Steps:

## Install [Homebrew](https://brew.sh/)

`/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`

Installs Xcode command line tools
Installs Git!
Gives access to the `brew` command.

## Install [iTerm](https://www.iterm2.com/)

`brew cask install iterm2`

## Install [Zsh](https://github.com/ohmyzsh/ohmyzsh)

`sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`

## Install [Node Version Manager](https://github.com/nvm-sh/nvm)

Installs NVM (switch between multiple versions of Node.JS on the same system)

`nvm install <version>`

Installs Node.JS <version> and relative NPM version.

## Install [VS Codium](https://vscodium.com/)

Installs a version VS Code with the telemetry ripped out.
Gives access to the `code` command
`brew cask install vscodium`

## Install preferred VS Code extensions
I keep a [public gist](https://gist.github.com/miclgael/79b65d3420f95a943eb9bf94be1399c5) with a list of my extensions ready to paste.

## Install [MAMP](https://www.mamp.info/en/) (untested)

`https://formulae.brew.sh/cask/mamp`
`brew cask install mamp`

## Install Sketch.app
`brew cask install sketch`

## Install Nucleo
Vector icon manager
`brew cask install nucleo`

## Install Spotify
`brew cask install spotify`
