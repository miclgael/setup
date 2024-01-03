##---------------##
##--- Exports ---##
##---------------##

# Fix for MAMP / WP CLI 
export PATH=$PATH:/Applications/MAMP/Library/bin/

# alias php=/Applications/MAMP/bin/php/php8.0.8/bin/php
export PATH="/usr/local/opt/php@7.4/bin:$PATH"
export PATH="/usr/local/opt/php@7.4/sbin:$PATH"

# the next line helps ensure gpg works
export GPG_TTY=$(tty)

# pnpm
export PNPM_HOME="$HOME/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"
# pnpm end

# Spaceship prompt custom settings go here
export SPACESHIP_PACKAGE_SHOW_PRIVATE=true
