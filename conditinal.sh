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



: << 'COMMENT'
murali=$1
if [ $murali -gt 18 ]; then
    echo " yes u r elibile for vote"
elif [ $murali -eq 18 ]; then
    echo " soon y ur going to elible"

else
    echo "  u r not elibile for vote"
     
fi
COMMENT

shirt=$1
if [ $shirt -ge 100 ] && [ $shirt -le 1000 ]; then
    echo " its ordinery shirt "
elif [ $shirt -gt 1000 ]; then
    echo " its good shirt"
else
    echo " its  cheap"  
fi    