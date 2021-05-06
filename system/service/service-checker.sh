#!/bin/bash

# Service Checker
#
# @author: https://github.com/linusniederer
# @link: https://github.com/linusniederer/ubuntu-configurations/blob/main/system/service/service-checker.sh
# @raw: https://raw.githubusercontent.com/linusniederer/ubuntu-configurations/main/system/service/service-checker.sh
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

timestamp() {
    echo $(date +"%T")
}

# ********************* MAIN
logger "service-checker.sh ... Starting with param ${1}"

status=$(getStatus $1)

if [ "${status}" = "active" ]; then
    logger  "service-checker.sh ... Service ${1} is running"
else
    logger "service-checker.sh ... Service ${1} is inactive"
    
    cd ./service-log
    echo "$(timestamp) > Service ${1} was inactive!" > error.log
    
    status=$(startService $1)
    logger "service-checker.sh ... Service ${1} has now state ${status}"
fi

logger "service-checker.sh ... End"
