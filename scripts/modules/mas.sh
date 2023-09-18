# Install Mac App Store apps

heading 'Running mas.sh'
info "This script will install Mac App Store apps. For a list of apps, see https://github.com/miclgael/setup#-macos-appstore-exclusive-downloads"

warning "You must sign into the App Store before running this script."
warning "Please ensure you are signed into the Mac App Store."

osascript -e 'tell application "App Store" to activate'

info "Waiting 15 seconds for App Store to open..."

sleep 15

if ! command -v mas >/dev/null; then
  warning "mas-cli is not installed. Installing mas..."
  brew install mas
else 
  info "mas-cli is installed. Proceeding..."
fi

info "This may take a while..."

mas install 937984704 \
1450640351 \
1481029536 \
360593530 \
1176895641 \
425424353 \
904280696 \
1494210770 \
1529448980 \
1287239339 \
571213070

success "Finished installing Mac App Store apps."
