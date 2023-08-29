##---------------##
##--- Sources ---##
##---------------##

# integrate iTerm2 helpers directly into zsh
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# The next line updates PATH for Netlify's Git Credential Helper.
test -f '~/Library/Preferences/netlify/helper/path.zsh.inc' && source '~/Library/Preferences/netlify/helper/path.zsh.inc'

# Source Spaceshipt prompt. Installed with `brew install spaceship`.
test -e /opt/homebrew/opt/spaceship/spaceship.zsh && source /opt/homebrew/opt/spaceship/spaceship.zsh

# Source zsh-autosuggestions. Installed with `brew install zsh-autosuggestions`.
test -e /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh && source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# Source zsh-syntax-highlighting. Installed with `brew install zsh-autosuggestions`.
test -e /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh && source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
