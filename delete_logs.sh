#!/bin/bash

log_folder=/home/ec2-user/app-logs
log_file="$log_folder/$0.log"



if [ ! -d $log_folder ]; then
    echo -e " The $log_folder is not availbe"
    exit 1
fi

filesto_delete=$(find $log_folder -name "*.log" -type f  -mtime +14)
echo "$filesto_delete"



