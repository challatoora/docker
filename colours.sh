#!/bin/bash

a=bluewhitegreen
b=yellowredorange
price=$1


if [ $price -ge 1000 ] && [ $price -le 5000 ]; then
    echo " print $a  "

elif [ $price -ge 500 ] && [ $price -le 800]; then
    echo " print $b "
fi
 