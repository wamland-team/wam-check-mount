#!/bin/bash
HELP_USAGE="Usage: ./`basename $0` -s -f [PATH]"
HELP_VERSION="version : ${VER}";

#######################################
# Argument
#######################################
slack=0; show_help=0;show_version=0;source=''
while getopts 'hvsf:v' flag; do
  case "${flag}" in
    h) show_help=1;;
    v) show_version=1;;
    s) slack=1 ;;
    f) source="${OPTARG}" ;;
  esac
done

if [ ${show_help} -eq 1 ]
then
  echo $HELP_USAGE;
  exit 1
fi

if [ ${show_version} -eq 1 ]
then
  echo $HELP_VERSION;
  exit 1
fi