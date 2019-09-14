#!/bin/sh
I=1
T=$1
while read line ; do
        echo -n "\r$I/$T"
        I=$(($I + 1))
done
echo
