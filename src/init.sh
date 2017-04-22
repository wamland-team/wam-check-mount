#!/bin/bash

BIN_MOUNT=`/usr/bin/which mount` &>/dev/null;
BIN_LS=`/usr/bin/which ls` &>/dev/null;
BIN_HOSTNAME=`/usr/bin/which hostname` &>/dev/null; HOSTNAME=`${BIN_HOSTNAME}`;
BIN_CURL=`/usr/bin/which curl` &>/dev/null;

source src/help.sh;

#######################################
# Verify that the folder path is set
#######################################
if test -z ${source}
then
  echo ${HELP_USAGE};
  exit 1
fi

source .env.sh;
source src/mount.sh;
source src/slack.sh;

