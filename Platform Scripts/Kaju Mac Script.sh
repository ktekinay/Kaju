#!/bin/bash

#
# FUNCTIONS
#

function log_cmd {
  /usr/bin/logger -t "Kaju Update Script" $@
}

# END FUNCTIONS

#
# These will be filled in by the calling app
#

APP_NAME=@@APP_NAME@@
APP_PARENT=@@APP_PARENT@@
APP_VERSION=@@APP_VERSION@@
NEW_APP_NAME=@@NEW_APP_NAME@@
NEW_APP_PARENT=@@NEW_APP_PARENT@@
TEMP_FOLDER_PATH=@@TEMP_FOLDER@@
PID_FILE=@@PID_FILE_PATH@@

#
# -----------------
#

readonly true=1
readonly false=0

APP_PATH=$APP_PARENT/$APP_NAME
NEW_APP_PATH=$NEW_APP_PARENT/$NEW_APP_NAME

RENAMED_APP_NAME=`echo "$APP_NAME" | /usr/bin/sed -E s/\.[aA][pP]{2}//`-`date +%Y%m%d%H%M%S`.app
RENAMED_APP_PATH=$APP_PARENT/$RENAMED_APP_NAME

log_cmd "STARTING UPDATE OF $APP_NAME"

counter=10
while [ -f "$PID_FILE" ]
do
  log_cmd "Checking to see if $PIDFILE exists, $counter"
  sleep 1
  
  let counter=counter-1
  
  if [ $counter == 0 ]
  then
  	log_cmd 'ERROR: Could not update app, it never quit'
  	exit 1
  fi
done

PROCEED=$true

#
# Rename the old application
#
log_cmd "Renaming old application $APP_NAME to $RENAMED_APP_NAME"
mv "$APP_PATH" "$RENAMED_APP_PATH"

#
# Make sure that succeeded
#
if [ $? == 0 ]
then
  log_cmd '...confirmed'
else
  log_cmd "Could not rename old application to $RENAMED_APP_PATH"
  PROCEED=0
fi

#
# Move in the replacement app
#
if [ $PROCEED == $true ]
then
  log_cmd "Moving new application $NEW_APP_PATH to folder $APP_PARENT"
  mv "$NEW_APP_PATH" "$APP_PARENT"

  #
  # Make sure that worked
  #
  if [ $? == 0 ]
  then
    log_cmd '...confirmed'
  else
    log_cmd "Could not move in new application"
    log_cmd "Attempting to restore old application and launch it"
    mv "$RENAMED_APP_PATH" "$APP_PATH"
    open "$APP_PATH" --args --kaju-fail
    PROCEED=$false
  fi
fi

if [ $PROCEED == $true ]
then
  log_cmd "Removing old application $RENAMED_APP_NAME"
  rm -fr "$RENAMED_APP_PATH"
  
  APP_PATH=$APP_PARENT/$NEW_APP_NAME
  log_cmd "Starting new application at $APP_PATH"
  
  open "$APP_PATH" --args --kaju-success "$APP_VERSION"
fi

if [ $PROCEED == $true ]
then
  log_cmd 'Removing temp folder'
  rm -fr "$TEMP_FOLDER_PATH"
fi
