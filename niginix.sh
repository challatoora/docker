#!/bin/bash

id=$(id -u)

if [ $id -ne 0 ]; then
    echo " this is not a root user"
    exit 1
fi

    echo "installing nginix"
dnf install nginx -y 

if [ $? -eq 0 ]; then
    echo " instaled"
else
    echo " failed"

    