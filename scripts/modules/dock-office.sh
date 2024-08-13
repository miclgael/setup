#!/bin/bash

# Copyright 2023 Michael Gale <https://www.michaelgale.dev/>

# Original copyright Mathias Bynens <https://mathiasbynens.be/>
# Original License can be found within the .github folder of this repo @ `.github/LICENSE-MIT.txt`

# Wipe the existing dock
defaults write com.apple.dock persistent-apps -array

# Fill the dock with apps in this list, incl. spaces.
for APP_NAME in "Calendar" \
  "Things3" \
  "Spark" \
  "Obsidian" \
  "" \
  "Microsoft Outlook" \
  "zoom.us" \
  "Microsoft Teams" \
  "" \
  "Firefox" \
  "Firefox Developer Edition" \
  "" \
  "1Password" \
  "" \
  "Visual Studio Code" \
  "Tower" \
  "iTerm" \
  "Hoppscotch" \
  "" \
  "Sketch" \
  "Nucleo" \
  "ColorSlurp"; 
do

# Add Spacer to the Dock
if [[ $APP_NAME == "" ]]; then
  defaults write com.apple.dock persistent-apps -array-add '{tile-data={}; tile-type="spacer-tile";}'

# Add System App (Calendar) to the Dock
elif [[ 
  $APP_NAME == "Calendar" || 
  $APP_NAME == "Home" || 
  $APP_NAME == "Notes" || 
  $APP_NAME == "Messages"
]]; then
  defaults write com.apple.dock persistent-apps -array-add "<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>/System/Applications/${APP_NAME}.app</string><key>_CFURLStringType</key><integer>0</integer></dict></dict></dict>"

# Add App to the Dock
else
  defaults write com.apple.dock persistent-apps -array-add "<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>/Applications/${APP_NAME}.app</string><key>_CFURLStringType</key><integer>0</integer></dict></dict></dict>"
fi

done

echo "Done. Restarting the Dock."

killall Dock
