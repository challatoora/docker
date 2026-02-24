#!/bin/bash

user=$(id -u)

folder=/var/log/shell
logs=$folder/$0.log

mkdir -p  $folder
if [ $user-ne 0 ]; then
 echo " u r not user $user"
fi

validate(){
    if [ $1 -eq 0 ]; then
        echo " $2 installing $2"
    else
        echo " $2 failed "S
  fi
}

dnf install  nginx -y 
validate $? "nginx"