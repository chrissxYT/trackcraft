#!/bin/bash
I=0
C=$(wc -l src_lists | awk '{ print $1 }')
while [ $I -lt $C ] ; do
        echo -n ' ' >&2
        I=$(($I + 1))
done
echo -ne ' ]\r[' >&2

I=0
for u in $(cat src_lists) ; do
        { curl -fsL "$u" ; echo -n '#' >&2 ; } &
        pids[${I}]=$!
        I=$(($I + 1))
done

for pid in ${pids[*]} ; do
        wait $pid
done

echo ] >&2
