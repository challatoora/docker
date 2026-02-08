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
    echo -e "sudo  backup <source> and <destination> and <Days> default is 14 days"
    exit
}

log(){
    echo -e "$(date "+%Y-%m-%d %H:%M:%S") | $1" | tee -a Logs_file
}

if [ $# -lt 3 ]; then
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

files=$(find $source_dir -name "*.log" -type f -mtime +$days)

log " backup started" 
log " souce directory : $source_dir "
log " destination directory : $destination_dir"