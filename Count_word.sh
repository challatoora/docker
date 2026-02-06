#!/bin/bash

# echo "my name is murali"

# words=$"my name is murali"
 
#  echo $words | wc -w


word=$1

count=$(echo "$word" | wc -w)
echo "$count"
