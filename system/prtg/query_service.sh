#!/bin/sh

systemctl is-active $1 >/dev/null && echo "0:$?:OK" || echo "1:$?:$1 Down"
