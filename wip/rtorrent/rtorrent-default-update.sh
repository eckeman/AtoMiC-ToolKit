#!/bin/bash
# Script Name: AtoMiC rutorrent default update
# Author: TommyE123
# Publisher: http://www.htpcbeginner.com
#

# DO NOT EDIT ANYTHING UNLESS YOU KNOW WHAT YOU ARE DOING.

#$RUN_AS, username to run rutorrent under, the default is rutorrent
sudo sed -i "s@SR_USER=@SR_USER=$UNAME@g" /etc/default/$APPNAME || { echo -e $RED'Replacing RUN_AS failed.'$ENDCOLOR ; exit 1; }

#$APP_PATH, the location of SickBeard.py, the default is /opt/rutorrent
sudo sed -i "s@SR_HOME=@SR_HOME=$APPPATH@g" /etc/default/$APPNAME || { echo -e $RED'Replacing RUN_AS failed.'$ENDCOLOR ; exit 1; }

#$DATA_DIR, the location of sickbeard.db, cache, logs, the default is /opt/rutorrent
sudo sed -i "s@SR_DATA=@SR_DATA=$APPPATH/data@g" /etc/default/$APPNAME || { echo -e $RED'Replacing DATADIR failed.'$ENDCOLOR ; exit 1; }
