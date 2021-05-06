#!/bin/bash

# Service Checker
#
# @author: https://github.com/linusniederer
# @link:
# @raw:
#

# ********************* FUNCTIONS
getStatus() {
    service=$1
    status="$(systemctl is-active ${service}.service)"
    echo ${status}
}

startService() {
    service=$1
    service ${service} start
    status=$(getStatus $service)
    echo ${status}
}

# ********************* MAIN
logger "service-checker.sh ... Starting with param ${1}"

status=$(getStatus $1)

if [ "${status}" = "active" ]; then
    echo "Dienst ist aktiv"
else
    logger "service-checker.sh ... Service ${1} is inactive"
    status=$(startService $1)
    logger "service-checker.sh ... Service ${1} has now state ${status}"
fi

logger "service-checker.sh ... End"
