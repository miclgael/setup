##---------------##
##--- Sources ---##
##---------------##

# integrate iTerm2 helpers directly into zsh
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# The next line updates PATH for Netlify's Git Credential Helper. Installed with `brew install netlify-cli` and `netlify login`.
test -f "${HOME}/Library/Preferences/netlify/helper/path.zsh.inc" && source "${HOME}/Library/Preferences/netlify/helper/path.zsh.inc"

# Source Spaceshipt prompt. Installed with `brew install spaceship`. Load from either directory.
test -e /usr/local/opt/spaceship/spaceship.zsh && source /usr/local/opt/spaceship/spaceship.zsh
test -e /opt/homebrew/opt/spaceship/spaceship.zsh && source /opt/homebrew/opt/spaceship/spaceship.zsh

# Source zsh-autosuggestions. Installed with `brew install zsh-autosuggestions`. Load from either directory.
test -e /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh && source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
test -e /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh && source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# Source zsh-syntax-highlighting. Installed with `brew install zsh-syntax-highlighting`. Load from either directory.
test -e /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh && source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
test -e /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh && source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
