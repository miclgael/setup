##-----------------##
##--- Functions ---##
##-----------------##

# Package manager agnostic shortcuts to run common commands inside projects

# Start dev server
dev () {
  if [ -e yarn.lock ]
    then
      yarn run dev
  elif [ -e pnpm.lock ]
    then
      pnpm run dev
  else
    npm run dev
  fi
}

# Start Storybook
sb () {
  if [ -e yarn.lock ]
  then
    yarn run storybook
  elif [ -e pnpm.lock ]
    then
      pnpm run storybook
  else
    npm run storybook
  fi
}

# Run tests
test () {
  if [ -e yarn.lock ]
    then
      yarn run test:unit -u --watchAll
  elif [ -e pnpm.lock ]
    then
      pnpm run test
  else
    npm run test
  fi
}

# Shortcuts to cd into projects

# Vu project
vu () {
  cd ~/Code/work/vu/vu
}

# Chia project
chia () {
  cd ~/Code/projects/chia
}

# Personal website
mg () {
  cd ~/Code/projects/nuxt3.michaelgale.dev
}

# Whalebones website 
wb () {
  cd ~/Code/projects/chia.whalebones.net
}

# Oh Silence website
oh () {
  cd ~/Code/projects/chia.ohsilence.com
}

# SSH into remote server by name
# sabooro () {
#   ssh -t michael@192.168.1.108 "docker attach sabooro"
# }


## Other utils
snippet () {
  micro ~/.config/home/michael/.config/espanso
}
