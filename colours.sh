#!/bin/bash

a=bluewhitegreen
b=yellowredorange
price=$1


if [ a -ge 1000 ] && [ a -le 5000 ]; then
    echo " print $a  "

if [ b -ge 500 ] && [ b -le 800]; then
    echo "print $b "
fi 