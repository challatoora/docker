#!/bin/bash

# count=1

# while [ $count -le 5 ]
# do
#     echo "count is $count"
#     ((count++))
# done


while IFS= read -r line; do
    echo "$line"
done < calculator.sh  # input which file to read