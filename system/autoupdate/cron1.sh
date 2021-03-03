#!/bin/bash

# 

# ********************* INIT



# ********************* FUNCTIONS
DOUPDATE() {
	logger "cron1.sh ... Updating..."
	apt update
	apt upgrade -y
	apt autoclean
}

DOREBOOT() {
	logger "cron1.sh ... Rebooting..."
	reboot
}

# ********************* MAIN
logger "cron1.sh ... Starting..."

DOUPDATE

[ -f /var/run/reboot-required ] && DOREBOOT || logger "cron1.sh ... no reboot required"

logger "cron1.sh ... End"

