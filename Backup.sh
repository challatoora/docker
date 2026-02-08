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

if [ $# -lt 3 ]; then
    usage
fi

