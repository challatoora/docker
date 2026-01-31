#!/bin/bash

num=$1

if [ $num -gt 10 ]; then
    echo " $num is a big num "
elif [ $num -lt 10 ]; then
    echo " $num is a small num "
else
    echo " $num is a negative num "
fi