##---------------##
##--- Aliases ---##
##---------------##

# Package manager agnostic shortcuts (requires `npm i -g @antfu/ni`)
alias dev='nr dev'

# Nuxt specific shortcuts
alias sb='nr storybook:nuxt'
alias unit='nr test:unit -u --watchAll'
alias olint='onchange "**/*.ts" "**/*.js" "**/*.vue" --exclude-path .gitignore -- sh -c "yarn stylelint \"$(echo {{file}})\" --fix && eslint \"$(echo {{file}})\" --fix"' 

# MG specific shortcuts
alias watch='nr watch'
alias deploy='nr deploy'

# Re-run the `modules/dock.sh` script to refresh the dock to "default"
alias refreshdock='bash ~/Code/projects/setup/scripts/modules/dock.sh'

# Use fastfetch instead of neofetch, if available
alias neofetch='echo "using fastfetch" && fastfetch'

# Recursively list all node_modules folders from the current directory
alias ls_node_modules="find . -name 'node_modules' -type d -prune"

# Recursively remove all node_modules folders from the current directory
alias rm_node_modules="find . -name 'node_modules' -type d -prune -exec rm -rf '{}' +"
