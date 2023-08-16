!# /bin/bash

# https://github.com/U-L-M-S

# Check if running as root. If root, script will exit
if [[ $EUID -eq 0 ]]; then
	echo "This script should not be executed as root! Exiting......."
	exit 1
fi

# Set some colors for output messages
OK="$(tput setaf 2)[OK]$(tput sgr0)"
ERROR="$(tput setaf 1)[ERROR]$(tput sgr0)"
NOTE="$(tput setaf 3)[NOTE]$(tput sgr0)"
WARN="$(tput setaf 166)[WARN]$(tput sgr0)"
CAT="$(tput setaf 6)[ACTION]$(tput sgr0)"
ORANGE=$(tput setaf 166)
YELLOW=$(tput setaf 3)
RESET=$(tput sgr0)

# Set the name of the log file to include the current date and time
LOG="install-$(date +%d-%H%M%S).log"

#clear screen
clear

# Get the width of the terminal
TERM_WIDTH=$(tput cols)

# Calculate the padding for the message
MESSAGE="Welcome to my Arch-Hyprland-V3 Installer"
PAD_LENGTH=$((($TERM_WIDTH - ${#MESSAGE}) / 2))

# Set the color to green
GREN='\033[0;32m'
NC='\033[0m' # No Color

# Display the message with thicker width and green color
printf "${GREN}+$(printf '%*s' "$((TERM_WIDTH - 1))" '' | tr ' ' -)+${NC}\n"
printf "${GREN}|%*s${MESSAGE}%*s|${NC}\n" $PAD_LENGTH "" $PAD_LENGTH ""
printf "${GREN}+$(printf '%*s' "$((TERM_WIDTH - 1))" '' | tr ' ' -)+${NC}\n"

# Print password warning message
printf "\n${YELLOW} Some commands require you to enter your password in order to execute.\n"
printf " If you are worried about entering your password, you can cancel the script now with CTRL+C and review the contents of this script.${RESET}\n"
sleep 2
printf "\n"
printf "\n"

#clear screen
clear
