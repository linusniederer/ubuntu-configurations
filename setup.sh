#!/bin/bash

# ubuntu-configurations
#
# @author: https://github.com/linusniederer
# @link: https://github.com/linusniederer/ubuntu-configurations/blob/main/setup.sh
# @raw: https://raw.githubusercontent.com/linusniederer/ubuntu-configurations/main/setup.sh
#

tput clear
tput cup 3 15
tput setaf 3
echo "Ubuntu Configurations"
tput sgr0
tput cup 5 17
tput rev
echo "M A I N - M E N U"
tput sgr0

tput cup 7 15
echo "1. Packages"
tput cup 8 15
echo "2. System"

# Set bold mode
tput bold
tput cup 12 15
read -p "Enter your choice [1-2] " choice

tput clear
tput sgr0
tput rc
