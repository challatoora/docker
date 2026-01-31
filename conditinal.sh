#!/bin/bash

num=$1

if [ $num -ge 0 ] && [ $num -le 10 ]; then
    echo " $num is a small num "
elif [ $num -gt 10 ]; then
    echo " $num is a big num "
else
    echo " $num is a negative num "
fi