#!/bin/bash

A=$1
B=$2
C=$3


if [ $C -eq + ]; then
    echo $(($A+$B))

elif [ $C -eq - ]; then
    echo $(($A-$B))

elif [ $C -eq * ]; then
    echo $(($A*$B))

elif [ $C -eq / ]; then
    if [ $B -eq 0 ]; then
        echo " Division by zero not allowed "
    else
         echo $(($A/$B))

else
    echo "invalid opeartor"
    