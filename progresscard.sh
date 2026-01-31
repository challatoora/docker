#!/bin/bash

: << 'COMMENT'

#!/bin/bash

marks=$1

if [ "$marks" -lt 0 ] && [ "$marks" -gt 100 ]; then
    echo " invalid marks "
elif [ $marks -eq 35 ]; then
    echo " just pass"
elif [ $marks -le 50 ] && [ $marks -ge 60 ]; then
    echo " second class"
elif [ $marks -gt 65 ] && [ $marks -eq 75 ]; then
    echo " school first"
elif [ $marks -ge 75 ] && [ $marks -eq 90 ]; then
    echo " state first"
elif [ $marks -ge 90 ] && [ $marks-eq 100 ]; then
    echo " india first"
else 
    echo " all the best " 
fi    
COMMENT





marks=$1

if [ "$marks" -lt 0 ] || [ "$marks" -gt 100 ]; then 
    echo " invalid marks "
elif [ $marks -eq 35 ]; then 
    echo " just pass"
elif [ $marks -gt 35 ] && [ $marks -le 60 ]; then 
    echo " second class"
elif [ $marks -gt 60 ] && [ $marks -le 90 ]; then 
    echo " first class"
elif [ $marks -gt 90 ] && [ $marks -le 100 ]; then 
    echo " state first"
else
    echo "fail"
fi
