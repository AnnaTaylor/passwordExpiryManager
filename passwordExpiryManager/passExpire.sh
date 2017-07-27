#! /bin/bash

# Computer may be off on first day of month, so cronjob to change password may 
# not happen... store a flag in a file to say which month it was last set for.

# txt file stores month password last updated
lastUpdateMonth=$(cat passUpdateTracker.txt)
currentMonth=$(date +%m)

if [ "$lastUpdateMonth" -lt "$currentMonth" ]
then
	osascript passExpire.applescript
	#osascript -e 'tell application "Terminal" to activate in window 1'
	#osascript -e 'set theDir to "~/Code/"'
	#osascript -e 'tell application "Terminal" to do shell script "bash 
	#/Users/anna/Code/passExpiredMessage.sh" in window 1'

	#osascript -e 'tell application "Terminal" to do script "passwd" in window 1'
	#passwd
	echo $currentMonth > passUpdateTracker.txt
fi
