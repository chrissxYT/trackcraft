#!/bin/sh
FILE=src_lists
COUNT=$(wc -l src_lists | awk '{ print $1 }')
I=1

echo -n "($I/$COUNT)" >&2

for u in $(cat src_lists) ; do
        echo -n "\r($I/$COUNT)" >&2
        curl -fsSL $u
        I=$(($I + 1))
done > blocklist
echo "" >&2
