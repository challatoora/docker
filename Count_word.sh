#!/bin/bash

# echo "my name is murali"

# words=$"my name is murali"
 
#  echo $words | wc -w


word=$1

count=$word | wc -w
echo $count
