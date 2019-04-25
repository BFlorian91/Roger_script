#!/bin/bash

CRONTAB="`ls -l --full-time /etc/crontab | awk -F' ' {'print $6'}`"
CRONSAVE="`ls -l --full-time /etc/cron_comp | awk -F' ' {'print $6'}`"

if [ $CRONTAB != $CRONSAVE ]
then
	echo "Alert: Crontab has been edited!" | /usr/lib/sendmail -v root@localhost
fi
