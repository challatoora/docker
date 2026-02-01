#!/bin/bash

user_id=$(id -u)

if [ $user_id -ne 0 ]; then
    echo " this is not a root user, hence run with sudo user"
    exit 1
fi

echo " installing nginix"
dnf install nginx -y

if [ $? -ne 0 ]; then
    echo "intsalling nginix is failed"
    exit 1
else
    echo "intsalling nginix is done"
fi

