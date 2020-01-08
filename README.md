# setup
Notes and scripts for setting up a new macOS dev environment *(Follow at your own risk / benefit)*

## Todo: 
- [ ] Make a bash script that automates some of this.
- [ ] Sync VScode extensions

## Steps:

### 🍻 Install [Homebrew](https://brew.sh/)

`/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`

- Installs Xcode command line tools
- Installs Git!
- Gives access to the `brew` command.

### 💤 Install [Zsh](https://github.com/ohmyzsh/ohmyzsh)

`sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`

### 👩‍💻 Install development software

```bash
brew cask install iterm2 vscodium mamp codekit tableplus firefox sourcetree insomnia && \ 
brew cask install homebrew/cask-versions/firefox-developer-edition
```

### 💻 Install preferred VS Code extensions

I keep a [public gist](https://gist.github.com/miclgael/79b65d3420f95a943eb9bf94be1399c5) with a list of my extensions, ready to paste into a terminal window. (Requires access to the `code` command)

Run it as its own script with the following command:

```bash
sh -c "$(curl -fsSL https://gist.githubusercontent.com/miclgael/79b65d3420f95a943eb9bf94be1399c5/raw/8750fefaee8ad93e9cf08fc8c26e55c34b121317/install-extensions.sh)"
```

### 🎨 Install design apps

```bash
brew cask install sketch nucleo
```

### Install Google fonts

w/Thanks to qrpike's [Web Font Load](https://github.com/qrpike/Web-Font-Load)

```bash
curl https://raw.githubusercontent.com/qrpike/Web-Font-Load/master/install.sh | bash
```

### 🛡 Install other misc. software

```bash
brew cask install dashlane authy spotify alfred slack notion carbon-copy-cloner
```

### 🎹 Install music apps

```bash
brew cask install ableton-live-suite loopback
```

### 💚 Install [Node Version Manager](https://github.com/nvm-sh/nvm)

Installs NVM (switch between multiple versions of Node.JS on the same system)

```bash
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.2/install.sh | bash
```

Installs Node.JS <version> and relative NPM version.

`nvm install node # "node" is an alias for the latest version`

## 🧼 Clean-up

- Get [Custom iTerm Applescripts for Alfred](https://github.com/stuartcryan/custom-iterm-applescripts-for-alfred)
- Add [spaces to the dock](https://css-tricks.com/snippets/html/add-spaces-to-dock-in-os-x/) 

```bash
defaults write com.apple.dock persistent-apps -array-add '{"tile-type"="spacer-tile";}'
```

```bash
killall Dock
```
