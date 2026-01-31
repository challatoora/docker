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
    echo "Invalid marks"

elif [ "$marks" -eq 35 ]; then
    echo "Just pass"

elif [ "$marks" -ge 36 ] && [ "$marks" -le 50 ]; then
    echo "Second class"

elif [ "$marks" -ge 51 ] && [ "$marks" -le 75 ]; then
    echo "School first"

elif [ "$marks" -ge 76 ] && [ "$marks" -le 90 ]; then
    echo "State first"

elif [ "$marks" -ge 91 ] && [ "$marks" -le 100 ]; then
    echo "India first"

else
    echo "All the best"
fi
