#!/bin/bash

# Autoupdate - autoremove
#
# @author: https://github.com/linusniederer
# @link: https://github.com/linusniederer/ubuntu-configurations/blob/main/system/autoupdate/cron2.sh
# @raw: https://raw.githubusercontent.com/linusniederer/ubuntu-configurations/main/system/autoupdate/cron2.sh
#

# ********************* INIT

# ********************* FUNCTIONS
CLEANUPOLDKERNEL() {
	logger "cron2.sh ... cleanup old kernels..."
	apt autoremove --purge -y
}


# ********************* MAIN
logger "cron2.sh ... Starting..."

CLEANUPOLDKERNEL

logger "cron2.sh ... End"
