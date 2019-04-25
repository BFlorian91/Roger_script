#!/bin/bash


LOG=/var/log/update_script.log

echo -e "\n============================ `date` ==============================" >> $LOG 
sudo apt-get update >> $LOG 2>&1 && sudo apt-get upgrade -y >> $LOG 2>&1

echo -e "==========================================================================================\n\n" >> $LOG
