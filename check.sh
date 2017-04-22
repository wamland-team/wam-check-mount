#!/bin/bash
VER=0.2
cd `dirname $0`
source src/init.sh;

##################################################
# Used to check that the path is a mount point
##################################################
if ! check_mount ${source}
then
  if [ ${slack} -eq 1 ]
  then

    ##################################################
    # Send slack notification
    ##################################################
    slack_notification ${CHANNEL} ${USER} "Le dossier < ${source} > est indisponible" ${TOKEN}

    exit 1
  fi
fi



