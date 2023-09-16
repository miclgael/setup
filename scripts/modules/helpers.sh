# KISS Colors (v1): https://github.com/ppo/bash-colors/blob/master/kiss-colors.sh
if ((`tput colors` >= 8)); then
  readonly reset="\e[0m"       # Uppercase = bold.
  readonly black="\e[0;30m";   readonly BLACK="\e[1;30m"
  readonly red="\e[0;31m";     readonly RED="\e[1;31m"
  readonly green="\e[0;32m";   readonly GREEN="\e[1;32m"
  readonly yellow="\e[0;33m";  readonly YELLOW="\e[1;33m"
  readonly blue="\e[0;34m";    readonly BLUE="\e[1;34m"
  readonly magenta="\e[0;35m"; readonly MAGENTA="\e[1;35m"
  readonly cyan="\e[0;36m";    readonly CYAN="\e[1;36m"
  readonly white="\e[0;37m";   readonly WHITE="\e[1;37m"
fi

the_date=$(date +"%Y-%m-%d")
the_time_am_pm=$(date +"%I:%M %p")

function title() { printf "${BLUE}=====\n${1}\nDate: ${the_date} - Time: ${the_time_am_pm}\n=====${reset}\n"; }
function end_credits() { printf "${BLUE}=====\n${1}\n=====${reset}\n"; }
function heading() { printf "${WHITE}${1}${reset}\n"; }
function warning() { printf "${magenta}Warning: ${1}${reset}\n"; }
function error() { printf "${red}ERROR: ${1}${reset}\n"; }
function success() { printf "${green}${1:-Successfully done.}${reset}\n"; }
function abort() { printf "${RED}Abort. ${1}${reset}\n\n"; exit; }
function info() { printf "\n${cyan}Info: ${1}${reset}\n\n"; }

title "Lanching @miclgael macOS setup. Let's go! 🚀"
