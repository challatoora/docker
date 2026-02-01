#!/bin/bash

id=$(id -u)

if [ $id -ne 0 ]; then
    echo " this is not a root user"
fi

dnf install nginx -y 