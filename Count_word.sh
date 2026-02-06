#!/bin/bash

words=$1

word_count=$("wc -c" $words)
echo "count is : $word_count"