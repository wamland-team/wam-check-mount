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
    slack_notification ${USER} "Le dossier < ${source} > est indisponible"

    exit 1
  fi
fi

##################################################
# Used to check the free on path
##################################################
check_free_space ${source} ${MIN_HDD}

exit 0;
