#!/bin/bash

a=10
 echo " print $a value"

b=$1
c=$2

echo " $1 and $2"

d=$((b-c))

echo " print $d "

echo date

echo " enter the value"
read murali

echo " value $murali"

e=10
f=20

g=$(($e+$f))

echo " print $g "

echo " $@"

echo "$#"

echo "$0"

echo "$?"




