#!/bin/bash

id=$(id -u)

if [ $id -ne 0 ]; then
    echo " this is not a root user"
    exit 1
fi

    echo "nginix"
dnf install nginxx -y 