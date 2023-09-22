heading 'Running cleanup.sh'
info "This script will download final remaining packages and initiate final setup steps. For more info, see https://github.com/miclgael/setup#-clean-up"

# INSTALL OBS IOS CAMERA PLUGIN

info "Checking if OBS is installed..."

if open -Ra "OBS" ; then
  info "OBS is installed. Continuing."

  # Extract version number from github repo 
  # @credit https://unix.stackexchange.com/a/743000 
  OBSIOS_VERSION=$({
    curl -s https://api.github.com/repos/wtsnz/obs-ios-camera-source/releases | \
      jq -r 'first(.[].tag_name | select(test("^v[0-9]")))' | sed 's/v//'
  })

  info "Downloading OBS iOS Camera plugin v$OBSIOS_VERSION"

  # Download the correct version for intel/m1 and place in the ~/Downloads directory
  curl -L -o ~/Downloads/obs-ios-camera-source-$OBSIOS_VERSION-$CHIPSET.pkg \
  https://github.com/wtsnz/obs-ios-camera-source/releases/latest/download/obs-ios-camera-source-$OBSIOS_VERSION-macos-$CHIPSET.pkg

  info "Installing OBS iOS Camera plugin v$OBSIOS_VERSION"

  # Check the file downloaded as expected, and run installer task
  test -e ~/Downloads/obs-ios-camera-source-$OBSIOS_VERSION-$CHIPSET.pkg && \
    installer -pkg ~/Downloads/obs-ios-camera-source-$OBSIOS_VERSION-$CHIPSET.pkg -target /

  info "Removing the OBS iOS Camera pkg download"

  # Tidy up the downloadded file
  rm ~/Downloads/obs-ios-camera-source-$OBSIOS_VERSION-$CHIPSET.pkg

  info "To check that OBS iOS Camera has installed correctly, please see https://obs.camera/docs/getting-started/ios-camera-plugin-usb/#2-Verify-that-the-iOS-Camera-Plugin-is-installed-correctly"
else
  warning "OBS is not installed."
fi 

