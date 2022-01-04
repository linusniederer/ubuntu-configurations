#!/bin/sh

pgrep $1  2>&1 1>/dev/null

if [ $? -ne 0 ]; then
  echo "1:$?:$1 Down"
else
  echo "0:$?:OK"
fi
