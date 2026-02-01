#!/bin/bash

id=$(id -u)

if [ $id -ne 0 ]; then
    echo " this is not a root user"
fi
    echo "nginix"
dnf install nginx -y 