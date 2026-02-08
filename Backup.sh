#!/bin/bash

user_id=$(id -u)
Logs_folder="/var/log/shell-script"
Logs_file="$Logs_folder/Backup.log"
source_dir=$1
destination_dir=$2
days=${3:-14}

if [ $user_id -ne 0 ]; then
    echo " this is not a root user, hence run with sudo user"
    exit 1
fi

mkdir -p $Logs_folder

usage(){
    echo  "sudo  backup <source> and <destination> and <Days> default is 14 days"
    exit
}

log(){
    echo -e "$(date "+%Y-%m-%d %H:%M:%S") | $1" | tee -a Logs_file
}

if [ $# -lt 2 ]; then
    usage
fi


if [ ! -d $source_dir ]; then
    echo " source directy is not there"
    exit 1
fi

if [ ! -d $destination_dir ]; then
    echo " directory directy is not there"
    exit 1
fi

FILES=$(find $source_dir -name "*.log" -type f -mtime +$days)

log " backup started" 
log " souce directory : $source_dir "
log " destination directory : $destination_dir"
log " days: $days"


if [ -z "${FILES}" ]; then
    log "No files to archieve ... $Y Skipping $N"
else
    # app-logs-$timestamp.zip
    log "Files found to archieve: $FILES"
    TIMESTAMP=$(date +%F-%H-%M-%S)
    ZIP_FILE_NAME="$destination_dir/app-logs-$TIMESTAMP.tar.gz"
    log "Archieve name: $ZIP_FILE_NAME"
    tar -zcvf $ZIP_FILE_NAME $(find $source_dir -name "*.log" -type f -mtime +$DAYS)

    # Check archieve is success or not
    if [ -f $ZIP_FILE_NAME ]; then
        log "Archeival is ... $G SUCCESS $N"

        while IFS= read -r filepath; do
        # Process each line here
        log "Deleting file: $filepath"
        rm -f $filepath
        log "Deleted file: $filepath"
        done <<< $FILES
    else
        log "Archeival is ... $R FAILURE $N"
        exit 1
    fi
fi
