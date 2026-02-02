#!/bin/bash

USERID=$(id -u)

Logs_folder="/var/log/shell-script"
logs_file="$logs_folder/$0.log"

if [ $USERID -ne 0 ]; then
        echo " please run this script with root user " | tee -a $log_file
        exit 1
fi

echo "Hi"
cp mongo.repo /etc/yum.repos.d/mongo.repo
# validate $? " copiying mongo Repo"

dnf install mongodb-org -y 
# validate $? " installing mongodb server"

systemctl enable mongod 
# validate $? " enabled mongodb"

systemctl start mongod 
# validate $? " start mongodb"

sed -i 's/127.0.0.1/0.0.0.0/g' /etc/mongo.conf
# validate $? " allowing remote connection "
