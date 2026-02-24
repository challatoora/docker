#!/bin/bash

user=$(id -u)

folder=/var/log/shell
logs=$folder/$0.log

mkdir -p  $folder
if [ $user -ne 0 ]; then
 echo " u r not user $user"
fi

validate(){
    if [ $1 -eq 0 ]; then
        echo " $2 installing $2" | tee -a $logs
    else
        echo " $2 failed " | tee -a $logs
  fi
}

dnf install  tree -y &>> $logs
validate $? "tree"