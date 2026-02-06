#!/bin/bash

userid=$(id -u)
Lfolder="/var/log/shell-roboshop"
log_file="$Lfolder/$0.log"


if [ $userid -ne 0 ]; then
    echo -e "You are not a root user" | tee -a $log_file
    exit 1
fi

mkdir -p $Lfolder

validate(){
    if [ $1 -ne 0 ]; then
        echo -e "$2 is failure" | tee -a $log_file
        exit 1
    else
        echo -e "$2 is success" | tee -a $log_file
    fi


}

cp mongo.repo/etc/yum.repos.d/mango.repo
validate $? " copying Mango Repo"

dnf install mongodb-org -y
validate $? " installing mongodb"

systemctl enable mongod
validate $? "enable mongodb"

systemctl start mongod
validate $? "start mongodb"

sed -i "s/127.0.0.1/0.0.0.0/g" /etc/mongod.conf
validate $? "allaowing remote connections"

systemctl restart mongod
validate $? "restarting mangodb"
