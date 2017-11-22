#!/bin/bash
HELP_USAGE="Usage: ./`basename $0` -s -f [PATH] -n [NAME]"
HELP_VERSION="version : ${VER}";

#######################################
# Argument
#######################################
slack=0; show_help=0;show_version=0;source=''; name='';
while getopts 'hvsn:f:v' flag; do
  case "${flag}" in
    h) show_help=1;;
    v) show_version=1;;
    s) slack=1 ;;
    n) name="${OPTARG}" ;;
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
  exit 0
fi