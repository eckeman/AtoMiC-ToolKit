#!/bin/bash
# Script Name: AtoMiC Sonarr Uninstaller
# Author: TommyE123
# Publisher: http://www.htpcBeginner.com
# License: MIT License (refer to README.md for more details)
#

# DO NOT EDIT ANYTHING UNLESS YOU KNOW WHAT YOU ARE DOING.

if [[ $ISSETUP != "Yes" ]]
then
  echo
  echo -e '\e[91mCannot be run directly. Please run setup.sh from AtoMiC ToolKit root folder: \033[0msudo bash setup.sh'
  echo
  exit 0
fi
source $SCRIPTPATH/inc/commons.sh
source $SCRIPTPATH/inc/header.sh

source $SCRIPTPATH/sonarr/sonarr-constants.sh

echo -e "${GREEN}AtoMiC $APPTITLE Uninstaller Script$ENDCOLOR"

source $SCRIPTPATH/inc/pause.sh
source $SCRIPTPATH/inc/app-stop.sh
source $SCRIPTPATH/inc/app-autostart-remove.sh
APPNAME='nzbdrone'
source $SCRIPTPATH/inc/app-uninstall.sh
APPNAME='sonarr'
source $SCRIPTPATH/inc/app-file-del.sh
source $SCRIPTPATH/inc/app-repository-remove.sh 
source $SCRIPTPATH/inc/app-uninstall-confirmation.sh
source $SCRIPTPATH/inc/thankyou.sh
source $SCRIPTPATH/inc/exit.sh
