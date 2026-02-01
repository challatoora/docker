#!/bin/bash

userid=$(id -u)

if [ $userid -eq 0 ]; then
    echo " installing mysql"
else
    echo " u r not root user"

fi
  dnf install mysql -y
  
if [ $? -eq 0 ]; then

    echo " installing sucess"
else
    echo " failure "
fi