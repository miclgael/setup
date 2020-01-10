# setup
Notes and scripts for setting up a new macOS dev environment *(Follow at your own risk / benefit)*

## Steps:

### 🍻 Install [Homebrew](https://brew.sh/)

`/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`

- Installs Xcode command line tools
- Installs Git!
- Gives access to the `brew` command.

### Install Git Large File Storage

I like to immediately install this, otherwise I forget and then things go haywire later when I pull down a repo that needs lfs.

`brew install git-lfs`

### 💤 Install [Z-Shell and Oh My Zsh](https://github.com/ohmyzsh/ohmyzsh)

- Zsh is an alternative terminal shell. OMZsh comes with lots of [themes](https://github.com/ohmyzsh/ohmyzsh#themes).
- **Zsh should be installed first**, see [installing zsh](https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH), or `brew install zsh`

##### Install Oh My Zsh:

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

### Install global node packages

#### Install Netlify CLI, since I use it for practically every side-project.

`npm install netlify-cli -g`

#### Install Heroku CLI

```bash
brew tap heroku/brew && brew install heroku

heroku autocomplete --refresh-cache

heroku autocomplete
```
Verify with `heroku --version`.
Login with `heroku login` (press any key to open a browser window for authentication)

#### Install Google Cloud SDK

`brew cask install google-cloud-sdk` (untested)

Will require auth through Google. Must already have an account.

## 🧼 Clean-up

- Get [Custom iTerm Applescripts for Alfred](https://github.com/stuartcryan/custom-iterm-applescripts-for-alfred)
- Add [spaces to the dock](https://css-tricks.com/snippets/html/add-spaces-to-dock-in-os-x/) 

```bash
defaults write com.apple.dock persistent-apps -array-add '{"tile-type"="spacer-tile";}'
```

```bash
killall Dock
```
