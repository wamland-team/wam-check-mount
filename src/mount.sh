#!/bin/bash

#######################################
# Checking the health of a mount points:
# Arguments:
#   path
# Returns:
#   Boolean
#######################################
check_mount()
{
  # Verify that the folder path is set
  if test -z ${source}
  then
     return 1;
  fi

  # Validating the folder path
  if ! test -d ${source}
  then
    return 1;
  fi

  # Validating the writing folder
  if ! test -w ${source}
  then
    return 1;
  fi

  # Verification if the folder is present in the mounting table
  ${BIN_MOUNT} | grep -w "${source}" 1>/dev/null

  # If the folder is not found in the mounting table
  if test ${?} -ne 0
  then
    return 1;
  fi

  cd ${source};

  # Return error if file change folder failed
  if test ${?} -ne 0
  then
    return 1;
  fi

  return 0;

}
