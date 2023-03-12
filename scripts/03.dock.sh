#!/usr/bin/env bash

# ~/.dock.sh — https://www.michaelgale.dev
# Copyright Michael Gale <michael@michaelgale.dev>
# License can be found within the .github folder of this repo @ `.github/LICENSE`

# Wipe the existing dock
defaults write com.apple.dock persistent-apps -array

# Fill the dock with apps in this list, incl. spaces.
for APP_NAME in "Spark" \
	"Calendar" \
	"Things3" \
	"" \
	"Obsidian" \
	"Firefox" \
	"" \
	"OBS" \
	"" \
	"1Password" \
	"Home" \
	"" \
	"Visual Studio Code" \
	"iTerm" \
	"ForkLift" \
	"" \
	"Ableton Live 11 Suite" \
	"Loopback" \
	"Vital" \
	"" \
	"Figma" \
	"Sketch" \
	"Nucleo" \
	"" \
	"Discord" \
	"Signal" \
	"Messages"; do

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
	defaults write com.apple.dock persistent-apps -array-add "<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>/System/Applications/$APP_NAME.app</string><key>_CFURLStringType</key><integer>0</integer></dict></dict></dict>"

# Add App to the Dock
else
	defaults write com.apple.dock persistent-apps -array-add "<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>/Applications/$APP_NAME.app</string><key>_CFURLStringType</key><integer>0</integer></dict></dict></dict>"
fi

done

echo "Done. Restarting the Dock."

killall Dock
