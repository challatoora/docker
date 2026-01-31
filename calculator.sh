#!/bin/bash

A=$1
B=$2
C=$3


if [ $C = "+" ]; then
    echo $(($A+$B))

elif [ $C = "-" ]; then
    echo $(($A-$B))

elif [ $C = "*" ]; then
    echo $((A*B))

elif [ $C = "/" ]; then
    if [ $B = 0 ]; then
        echo " Division by zero not allowed "
    else
         echo $(($A/$B))
    fi

else
    echo "invalid opeartor"
fi
    