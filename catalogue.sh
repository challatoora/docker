#!/bin/bash

userid=$(id -u)
folder="/var/log/shell-roboshop"
log_file="$folder/$0.log"


if [ $userid -ne 0 ]; then
    echo -e "You are not a root user" | tee -a $log_file
    exit 1
fi

mkdir -p $folder

validate(){
    if [ $1 -ne 0 ]; then
        echo -e "$2 is failure" | tee -a $log_file
        exit 1
    else
        echo -e "$2 is success" | tee -a $log_file
    fi


}

dnf module disable nodejs -y
validate $? " disable the nodejs version"

dnf module enable nodejs:20 -y
validate $? " enable the  20 version"

dnf install nodejs -y
validate $? " installimg"

useradd --system --home /app --shell /sbin/nologin --comment "roboshop system user" roboshop
validate $? " creating system user"

mkdir /app 
validate $? " creating directory "

