#!/bin/bash
a=$(date +%s)
sleep 10
b=$(date +%s)

c=$(($b-$a))

echo "total time savings $c"




