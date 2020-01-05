#!/bin/sh

USER="$HOME"
NODE_VER="12.14.0"

GREEN='\033[1;32m'
RESET="\033[0m"

# 🍻 Install [Homebrew](https://brew.sh/)
while true; do
    read -p "$(echo -e $GREEN Install homebrew\? \| ► Read more: https://brew.sh/ \(y\/n\) $RESET)" yn
    case $yn in
        [Yy]* ) /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"; break;;
        [Nn]* ) break;;
        * ) echo "Please answer yes or no.";;
    esac
done

# # 💤 Install [Oh My Zsh](https://github.com/ohmyzsh/ohmyzsh)
while true; do
    read -p "$(echo -e $GREEN Install Oh My Zsh\? \| ► Read more: https://github.com/ohmyzsh/ohmyzsh \(y\/n\) $RESET)" yn
    case $yn in
        [Yy]* ) sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"; break;;
        [Nn]* ) break;;
        * ) echo "Please answer yes or no.";;
    esac
done

# # 💻 Install development software
while true; do
    read -p "$(echo -e $GREEN Install development software\? ► [ iterm2, vscodium, mamp, codekit, tableplus, firefox + dev edition, sourcetree, insomnia ] \(y\/n\) $RESET)" yn
    case $yn in
        [Yy]* ) brew cask install iterm2 vscodium && \ 
        mamp codekit tableplus firefox sourcetree insomnia && \ 
        brew cask install homebrew/cask-versions/firefox-developer-edition; break;;
        [Nn]* ) break;;
        * ) echo "Please answer yes or no.";;
    esac
done

# # Install NVM - Node Version Manager
# while true; do
#     read -p green_prompt "Install NVM - Node Version Manager?" yn
#     case $yn in
#         [Yy]* ) curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.2/install.sh | bash && \ 
#         mamp codekit tableplus firefox sourcetree insomnia; break;;
#         [Nn]* ) break;;
#         * ) green_prompt "Please answer yes or no.";;
#     esac
# done

# # # Install NVM - Node Version Manager
# # curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.2/install.sh | bash
# # nvm install "$node_version"

# # # 💻 Install preferred VS Code extensions
# # brew cask install sketch nucleo

# # # 🎨 Install design apps
# # brew cask install sketch nucleo

# # # 🛡 Install other misc. software
# # brew cask install dashlane authy spotify alfred slack notion carbon-copy-cloner

# # # 🎹 Install music apps
# # brew cask install ableton-live-suite loopback

# # # cd $HOME

# # # bup_dir=.miclgael_setup_backup_user_settings
# # # if [ -d "$bup_dir" ]; then
# # #     echo "$bup_dir already exists!";
# # # else 
# # #     mkdir "$bup_dir"
# # #     echo "$bup_dir created!"
# # # fi

# # # Add [spacer tiles to the dock](https://css-tricks.com/snippets/html/add-spaces-to-dock-in-os-x/)
# # defaults write com.apple.dock persistent-apps -array-add '{"tile-type"="spacer-tile";}'
# # defaults write com.apple.dock persistent-apps -array-add '{"tile-type"="spacer-tile";}'
# # defaults write com.apple.dock persistent-apps -array-add '{"tile-type"="spacer-tile";}'
# # defaults write com.apple.dock persistent-apps -array-add '{"tile-type"="spacer-tile";}'
# # defaults write com.apple.dock persistent-apps -array-add '{"tile-type"="spacer-tile";}'
# # defaults write com.apple.dock persistent-apps -array-add '{"tile-type"="spacer-tile";}'
# # killall Dock

# # echo "done";

# # # cp $HOME $bup_dir
# # # echo $HOME > file.txt

