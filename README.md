# setup

Notes and scripts for setting up a new macOS dev environment _(Follow at your own risk / benefit)_

> 💡 I also have guides for [Linux](https://github.com/miclgael/setup-linux) and [Windows](https://github.com/miclgael/setup-win)!

## Steps:

### 🍻 Install [Homebrew](https://brew.sh/)

```bash
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

- Installs Xcode command line tools
- Installs Git!
- Gives access to the `brew` command.

### Install Git Large File Storage

I like to immediately install this, otherwise I forget and then things go haywire later when I pull down a repo that needs lfs.

```bash
brew install git-lfs
```

### 💤 Install Z-Shell

- **Zsh should be installed first**, see [installing zsh](https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH), or `brew install zsh`
- Zsh is an alternative terminal shell. OMZsh comes with lots of [themes](https://github.com/ohmyzsh/ohmyzsh#themes).

##### Install [Oh My Zsh](https://github.com/ohmyzsh/ohmyzsh)

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

### 👩‍💻 Install development software

```bash
brew install --cask iterm2 vscode mamp codekit tableplus sourcetree insomnia docker && \
brew install --cask homebrew/cask-versions/firefox-developer-edition && \
brew install composer
```

**Micro editor (nicer than Nano, easier than Vim)**

```bash
brew install micro
```

### 💻 Install preferred VS Code extensions

A few ways to handle this, depending on your flavour of VS Code / VS Codium

- Using [`code --install-extension <extension-name>`](https://gist.github.com/miclgael/fec1768d31c92a580a3b0a28688a29e9)
- Using the [Settings Sync extension](https://marketplace.visualstudio.com/items?itemName=Shan.code-settings-sync), when connected to an appropriate [Github Gist](https://gist.github.com/miclgael/79b65d3420f95a943eb9bf94be1399c5). 
- Or just use the [built-in sync functions](https://code.visualstudio.com/docs/editor/settings-sync) inside vscode, if you don't care about telemetry. :)

### 🎨 Install design apps

```bash
brew install --cask sketch nucleo imageoptim
```

### Install Google fonts

w/Thanks to qrpike's [Web Font Load](https://github.com/qrpike/Web-Font-Load)

```bash
curl https://raw.githubusercontent.com/qrpike/Web-Font-Load/master/install.sh | bash
```

### 🛡 Install other misc. software

```bash
brew install --cask 1password authy nordvpn alfred slack notion carbon-copy-cloner dropbox
```

### 🎹 Install music apps (optional)

```bash
brew install --cask ableton-live-suite loopback
```

**Manual step:**

[Install Komplete Audio 6 Drivers](https://www.native-instruments.com/en/support/downloads/drivers-other-files/) <sup>\*</sup>

<sup>\*</sup>[This driver is not necessary with Catalina 10.15.2 and will error](https://support.native-instruments.com/hc/en-us/community/posts/360008523278/comments/360001197857). Leaving here for convenience / reminder.

### 📼 Install multimedia apps (optional)

```bash
brew install --cask kap handbrake

## ffmpeg CLI tool
brew install ffmpeg --force &&
brew link ffmpeg
```

### 💚 Install [Node Version Manager](https://github.com/nvm-sh/nvm)

Installs NVM (switch between multiple versions of Node.JS on the same system)

```bash
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash
```

Installs Node.JS <version> and relative NPM version.

```bash
nvm install node # "node" is an alias for the latest version
```

<details>
<summary><strong>Auto-load from `.nvmrc` when changing directory</strong></summary>

```zsh
# place this after nvm initialization!
autoload -U add-zsh-hook
load-nvmrc() {
  local node_version="$(nvm version)"
  local nvmrc_path="$(nvm_find_nvmrc)"

  if [ -n "$nvmrc_path" ]; then
    local nvmrc_node_version=$(nvm version "$(cat "${nvmrc_path}")")

    if [ "$nvmrc_node_version" = "N/A" ]; then
      nvm install
    elif [ "$nvmrc_node_version" != "$node_version" ]; then
      nvm use
    fi
  elif [ "$node_version" != "$(nvm version default)" ]; then
    echo "Reverting to nvm default version"
    nvm use default
  fi
}
add-zsh-hook chpwd load-nvmrc
load-nvmrc
```

[credit :)](https://github.com/nvm-sh/nvm#zsh)

</details>


### Install global node packages

#### Install Netlify CLI

```bash
npm install netlify-cli -g

netlify login
```

### ✏️ Install Hugo for blogging

```bash
brew install hugo
```

#### Set up [Netlify Large Media](https://docs.netlify.com/large-media/setup/)

_(requires [Git LFS](#install-git-large-file-storage))_

```bash
cd project-name

netlify link

netlify lm:setup
```

#### Install Heroku CLI

```bash
brew tap heroku/brew && brew install heroku

heroku autocomplete --refresh-cache

heroku autocomplete
```

Verify with `heroku --version`.

Login with `heroku login` (press any key to open a browser window for authentication)

#### Install Google Cloud SDK

`brew install google-cloud-sdk` (untested)

Will require auth through Google. Must already have an account.

#### Install Speedtest CLI

`brew install speedtest-cli`

## 🧼 Clean-up

- Get [Custom iTerm Applescripts for Alfred](https://github.com/stuartcryan/custom-iterm-applescripts-for-alfred)
- Install some optional utils `brew install --cask vanilla rocket`
- Grab [OBS Camera](https://obs.camera/docs/getting-started/ios-camera-plugin-usb/) for web-camming
- Grab [DaVinci Resolve 16](https://www.blackmagicdesign.com/products/davinciresolve/) for video editing

**Add [spaces to the dock](https://css-tricks.com/snippets/html/add-spaces-to-dock-in-os-x/):**

```bash
defaults write com.apple.dock persistent-apps -array-add '{"tile-type"="spacer-tile";}'

killall Dock
```

## BetterTouchTool

Optionally, install _BetterTouchTool_. This is a paid app (free license if you already own _BetterSnapTool_). It's not only useful for touchbar MacBooks - this is a firm requirement for every Mac for me now.

```bash
brew install --cask bettertouchtool
```

**Visit the macOS App Store for**

- [Amphetamine](https://apps.apple.com/au/app/amphetamine/id937984704?mt=12)
- [Lightweight PDF](https://apps.apple.com/au/app/lightweight-pdf/id1450640351?mt=12)
- [The Unarchiver](https://apps.apple.com/au/app/the-unarchiver/id425424353?mt=12)
- [Xcode](https://apps.apple.com/au/app/xcode/id497799835?mt=12)
