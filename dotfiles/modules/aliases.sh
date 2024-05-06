##---------------##
##--- Aliases ---##
##---------------##

# alias codium=flatpak run com.vscodium.codium

# alias codium=code
# alias code=codium

# Package manager agnostic shortcuts (requires `npm i -g @antfu/ni`)
alias dev='nr dev'

alias sb='nr storybook:nuxt'
alias unit='nr test:unit -u --watchAll'
alias olint='onchange "**/*.ts" "**/*.js" "**/*.vue" --exclude-path .gitignore  -- eslint "$(echo {{file}})" --fix && yarn stylelint "$(echo {{file}})" --fix'

# MG specific shortcuts
alias watch='nr watch'
alias deploy='nr deploy'

alias refreshdock='bash ~/Code/projects/setup/scripts/modules/dock.sh'
