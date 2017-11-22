#!/bin/bash
VER=0.3
cd `dirname $0`
source src/init.sh;

free=`df -h ${source} | sed -n 2p | awk '{print $4}' | sed 's/[^0-9]*//g'`
slack_notification "CHECK FREE SPACE" "Server : *$name* < *${free}G* free => \`${source}\` >"