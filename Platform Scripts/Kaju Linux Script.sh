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
# This array will store the names of the items next to the executable
# under the variable NEW_APP_OTHER_NAME
#
NEW_APP_OTHER_UB=@@NEW_APP_OTHER_UB@@

@@NEW_APP_OTHER_ARRAY@@

#
# -----------------
#

readonly true=1
readonly false=0

APP_PATH=$APP_PARENT/$APP_NAME

BACKUP_PARENT=$APP_PARENT/${APP_NAME}-`date +%Y%m%d%H%M%S`
mkdir "$BACKUP_PARENT"

log_cmd "STARTING UPDATE OF $APP_NAME"

counter=10
while [ -f "$PID_FILE" ]
do
	log_cmd  "Checking to see if $PIDFILE exists, $counter"
	sleep 1
	
	let counter=counter-1
	
	if [ $counter == 0 ]
	then
		log_cmd  'ERROR: Could not update app, it never quit'
		exit 1
	fi
done

PROCEED=$true

#
# Move the other items
#
log_cmd "Copying other items to backup $BACKUP_PARENT"

counter=0
while [ $counter -le $NEW_APP_OTHER_UB ]
do
	this_item=${NEW_APP_OTHER_NAME[$counter]}
	log_cmd "Looking for item $this_item in $APP_PARENT"
	
	this_path=$APP_PARENT/$this_item
	if [ -d "$this_path" ] || [ -f "$this_path" ]
	then
		log_cmd "...found, copying"
		cp -pr "$this_path" "$BACKUP_PARENT"
		if [ $? == 0 ]
		then
			log_cmd "...confirmed"
		else
			 log_cmd "...FAILED!"
			 PROCEED=$false
			 break
		fi
	fi
	(( counter++ ))
done

#
# Move the executable
#
if [ $PROCEED == $true ]
then
	log_cmd "Moving the executable $APP_NAME to backup"
	mv "$APP_PARENT/$APP_NAME" "$BACKUP_PARENT"
	if [ $? == 0 ]
	then
		log_cmd "...confirmed"
	else
		log_cmd "...FAILED! (Error $?)"
		PROCEED=$false
	fi
fi

#
# Make sure there wasn't an error during the backup
#
if [ $PROCEED == $true ]
then
	log_cmd 'All items backed up'
else
	log_cmd 'Attempting to copy items back to parent'
	rsync -a --exclude='.DS_Store' "${BACKUP_PARENT}/" "$APP_PARENT"
fi

#
# Move in the replacement files
#
if [ $PROCEED == $true ]
then
	log_cmd  "Copying files from $NEW_APP_PARENT to folder $APP_PARENT"
	rsync -a --exclude='.DS_Store' "${NEW_APP_PARENT}/" "$APP_PARENT"
	
	if [ $? == 0 ]
	then
		log_cmd  '...confirmed'
	else
		log_cmd  "...FAILED! (Error $?)"
		log_cmd  "Attempting to restore old application"
		rsync -a --exclude='.DS_Store' "${BACKUP_PARENT}/" "$APP_PARENT"
		PROCEED=$false
		break
	fi
fi

#
# Removed the backup folder if everything has gone swimmingly so
#
if [ $PROCEED == $true ]
then
	log_cmd 'Removing backup'
	rm -r "$BACKUP_PARENT"
fi

#
# Launch the application
#
if [ $PROCEED = $true ]
then
	log_cmd 'Making the new app executable'
	chmod +x "$APP_PARENT/$NEW_APP_NAME"
	log_cmd 'Launching new app'
	"$APP_PARENT/$NEW_APP_NAME" --kaju-success "$APP_VERSION"
else
	log_cmd 'Launching old app'
	"$APP_PARENT/$APP_NAME" --kaju-fail
fi

log_cmd  'Removing temp folder'
rm -fr "$TEMP_FOLDER_PATH"
