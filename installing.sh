#!/bin/bash

user_id=$(id -u)

if [ user_id -ne 0 ]; then
    echo " this is not a root user, hence run with sudo user"
fi

echo " installing nginix"
dnf install nginx -y