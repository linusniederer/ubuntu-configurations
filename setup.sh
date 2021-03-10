#!/bin/bash

# ubuntu-configurations
#
# @author: https://github.com/linusniederer
# @link: https://github.com/linusniederer/ubuntu-configurations/blob/main/setup.sh
# @raw: https://raw.githubusercontent.com/linusniederer/ubuntu-configurations/main/setup.sh
#


main_menu() {
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
	read -p "Enter your choice [1-2] " CHOICE

	tput clear
	tput sgr0
	tput rc
	
	return $CHOICE
}

packages_menu() {
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
	echo "1. apache2"
	tput cup 8 15
	echo "2. elasticsearch"
	tput cup 9 15
	echo "3. haproxy"
	tput cup 10 15
	echo "4. keepalived"
	tput cup 11 15
	echo "5. kibana"

	# Set bold mode
	tput bold
	tput cup 12 15
	read -p "Enter your choice [1-5] " CHOICE

	tput clear
	tput sgr0
	tput rc
	
	return $CHOICE
}

CHOICE = main_menu

if [ $CHOICE = 1 ]
then
	packages_menu
fi


