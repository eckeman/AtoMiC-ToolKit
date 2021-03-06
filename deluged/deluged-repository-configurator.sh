#!/bin/bash
# Script Name: AtoMiC Deluge Repo config Script
# Author: TommyE123
# Publisher: http://www.htpcBeginner.com
# License: MIT License (refer to README.md for more details)
#

# DO NOT EDIT ANYTHING UNLESS YOU KNOW WHAT YOU ARE DOING.

CODENAME=$(lsb_release -c -s) 

case "$CODENAME" in
  'squeeze'|'wheezy'|'jessie'|'stretch'|'sid')
    APPREPOSITORYLINK=''
    ;;
  *)
    REPOPPA='YES'
    APPREPOSITORYLINK='ppa:deluge-team/ppa'
    REPRECVKEYSHORT='249AD24C'
    ;;
esac
