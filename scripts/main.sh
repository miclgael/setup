#!/bin/bash

# Abs path to custom dotfiles configs
SCRIPTS_DIR="$HOME/Code/projects/setup/scripts"

# Required
source $SCRIPTS_DIR/modules/helpers.sh
source $SCRIPTS_DIR/modules/setup.sh

# Modules
source $SCRIPTS_DIR/modules/brew.sh
source $SCRIPTS_DIR/modules/casks.sh
source $SCRIPTS_DIR/modules/node.sh
source $SCRIPTS_DIR/modules/macos.sh
source $SCRIPTS_DIR/modules/dock.sh
