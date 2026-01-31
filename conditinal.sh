#!/bin/bash
##
#num=$1

#if [ $num -ge 0 ] && [ $num -le 10 ]; then
 #   echo " $num is a small num "
#elif [ $num -gt 10 ]; then
 #   echo " $num is a big num "
#else
 #   echo " $num is a negative num "
#fi




murali=$1
if [ $murali -gt 18 ]; then
    echo " yes u r elibile for vote"
elif [ $murali -eq 18 ]; then
    echo " soon y ur going to elible"

else
    echo "  u r not elibile for vote"
     
fi