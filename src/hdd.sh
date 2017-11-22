#!/bin/bash

check_free_space ()
{
	free=`df -h ${1} | sed -n 2p | awk '{print $4}' | sed 's/[^0-9]*//g'`

	if [ "${free}" -lt "${MIN_HDD}" ]
	then

        NOTIFICATON="!! Alerte il reste < ${free}G > de libre dans le dossier < ${1} >  ";
        echo ${NOTIFICATON};

        ##################################################
        # Send slack notification
        ##################################################
        if [ ${slack} -eq 1 ]
        then
            slack_notification "${name}" "${NOTIFICATON}"
        fi

		return 1;
	fi

	return 0;
}