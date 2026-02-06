#!/bin/bash

Words=$1

word_count=$(wc -w < "$Words")
echo "count is : $word_count"