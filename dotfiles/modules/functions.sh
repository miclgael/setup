##-----------------##
##--- Functions ---##
##-----------------##

# Shortcuts to cd into projects

# Vu project
vu () {
  cd $HOME/Code/work/vu/vu
}

# Chia project
chia () {
  cd $HOME/Code/projects/chia
}

# Deku project
deku () {
  cd $HOME/Code/projects/deku
}

# Personal website
mg () {
  cd $HOME/Code/projects/michaelgale.dev
}

# Whalebones website 
wb () {
  cd $HOME/Code/projects/chia.whalebones.net
}

# Oh Silence website
oh () {
  cd $HOME/Code/projects/chia.ohsilence.com
}

# Jump to projects folder
projects () {
  cd $HOME/Code/projects/
  ls -la
}

# SSH into remote server by name
# sabooro () {
#   ssh -t michael@192.168.1.108 "docker attach sabooro"
# }


## Other utils
snippet () {
  micro ~/.config/home/michael/.config/espanso
}
