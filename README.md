#  setup

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

### 💤 Install zsh and [oh-my-zsh](https://github.com/ohmyzsh/ohmyzsh)

**Zsh should be installed first!** See [installing zsh](https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH) or use brew:

```bash
brew install zsh
```

(follow the instructions)

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

(follow the instructions, again)

### 👩‍💻 Install development software

```bash
brew install --cask iterm2 visual-studio-code mamp codekit tableplus sourcetree insomnia docker && \
brew install --cask homebrew/cask-versions/firefox-developer-edition && \
brew install composer
```

- [Fix iTerm2 Arrow Keys](https://coderwall.com/p/gfmwlw/fixing-arrow-keys-in-iterm-2)
- [Change default +click browser](https://stackoverflow.com/a/46568996)

**[Micro editor](https://micro-editor.github.io/) (nicer than Nano, easier than Vim)**

```bash
brew install micro
```

### 💻 Install preferred VS Code extensions

There are a few ways to handle this, depending on your flavour of VS Code.

1. Easy: If you don't care about telemetry, just use the [built-in sync functions](https://code.visualstudio.com/docs/editor/settings-sync) in VS Code. Note: a Microsoft Account is required
2. Medium: If you're using VS Codium, you might like to try the [Settings Sync extension](https://marketplace.visualstudio.com/items?itemName=Shan.code-settings-sync). Connect to a [Github Gist](https://gist.github.com/miclgael/79b65d3420f95a943eb9bf94be1399c5) in order to save your settings
3. Hard: Manually install using the command line, `code --install-extension <extension-name>`. You could still save your settings to a [Github Gist](https://gist.github.com/miclgael/fec1768d31c92a580a3b0a28688a29e9))

### 🎨 Install design software

```bash
brew install --cask sketch figma nucleo imageoptim
```

### 🛡️ Install security and backup software

```bash
brew install --cask 1password authy nordvpn carbon-copy-cloner dropbox
```

### 💬 Install chat and teamwork software

```bash
brew install --cask microsoft-teams slack discord teamviewer
```

### 🎹 Install music and multimedia software

```bash
brew install --cask ableton-live-suite loopback spitfire-audio && \ 
kap handbrake obs
```

### 💚 Install [Node Version Manager](https://github.com/nvm-sh/nvm)

Installs NVM (switch between multiple versions of Node.JS on the same system)

```bash
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
```

Installs Node.JS <version> and relative NPM version.

```bash
nvm install node # "node" is an alias for the latest version
```

<details>
<summary><strong>🤖 Auto-load from `.nvmrc` when changing directory</strong></summary>

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

#### 🖥️ Install Netlify CLI

```bash
npm install netlify-cli -g

netlify login
```

#### 📹 Set up [Netlify Large Media](https://docs.netlify.com/large-media/setup/)

_(requires [Git LFS](#install-git-large-file-storage))_

```bash
cd project-name

netlify link

netlify lm:setup
```

#### 🖥️ Install Heroku CLI

> Note: I am no longer using Heroku since moving to Serverless functions - so I may remove this in future.
  
<details>
  <summary><strong>Steps</strong></summary>
  
```bash
brew tap heroku/brew && brew install heroku

heroku autocomplete --refresh-cache

heroku autocomplete
```

Verify with `heroku --version`.

Login with `heroku login` (press any key to open a browser window for authentication)
  
</details>

### 🚀 Install helpful utils

```bash
brew install --cask alfred bartender rocket bettertouchtool && \
homebrew/cask-drivers/elgato-control-center && \ 
brew install speedtest-cli 
```

### 🎮 Install some distractions

```bash
brew install --cask altserver steam plex && \
brew install --cask homebrew/cask-drivers/sony-ps-remote-play
```
  
### 👩‍💻 macOS AppStore exclusive downloads

These are some apps I love, but can't currently aquire via Homebrew

| AppStore Link                                                                             | price     |                              Note |
| :---------------------------------------------------------------------------------------- | --------- | --------------------------------: |
| [Amphetamine](https://apps.apple.com/au/app/amphetamine/id937984704?mt=12)                | free      |          Prevent OS from sleeping |
| [Lightweight PDF](https://apps.apple.com/au/app/lightweight-pdf/id1450640351?mt=12)       | free      |           Minify PDFs for sharing |
| [The Unarchiver](https://apps.apple.com/au/app/the-unarchiver/id425424353?mt=12)          | free      |     Slightly better archiving GUI |
| [Xcode](https://apps.apple.com/au/app/xcode/id497799835?mt=12)                            | free      | Purely for simulating iOS devices |
| [Things 3](https://apps.apple.com/au/app/things-3/id904280696?mt=12)                      | paid      |             The sexiest to-do app |
| [Tomato 2](https://apps.apple.com/au/app/tomato-2-pomodoro-timer/id1494210770?mt=12)      | free/paid |               Tidy Pomodoro alarm |
| [Notability](https://apps.apple.com/au/app/notability/id360593530)                        | paid      |          Sync with iPad notes app |
| [Noizio Lite](https://apps.apple.com/au/app/noizio-lite-nature-sounds/id1481029536?mt=12) | free/paid |             white noise generator |
| [Canary Mail](https://apps.apple.com/us/app/canary-mail/id1236045954)                     | paid      |      privacy focussed mail client |

### 🧼 Clean-up

- Get [Custom iTerm Applescripts](https://github.com/stuartcryan/custom-iterm-applescripts-for-alfred) for Alfred
- Grab [OBS Camera](https://obs.camera/docs/getting-started/ios-camera-plugin-usb/) for web-camming
- Grab [DaVinci Resolve 17](https://www.blackmagicdesign.com/products/davinciresolve/) for video editing
- Sign in to [SoundToys](https://www.soundtoys.com) to download plug-ins
- Sign in to [Vital.audio](https://vital.audio) to download VST synth
- Grab printer drivers from [Canon](https://www.canon.com.au/printers/pixma-mp230/support) and [TP-Link](https://www.tp-link.com/au/support/download/archer-vr2800/)
- Grab some [custom app icons](https://macosicons.com/#/) 
  
**[Add spaces to the dock](https://css-tricks.com/snippets/html/add-spaces-to-dock-in-os-x/)**

```bash
defaults write com.apple.dock persistent-apps -array-add '{"tile-type"="spacer-tile";}'

killall Dock
```

> 💡 **Tip** I usually add 7 gaps to visually separate my apps into the following 8 groups
>
> - Email + To-do
> - Note taking
> - Web browser
> - Password / Auth
> - Development tools
> - Music apps
> - Design tools
> - Misc.
