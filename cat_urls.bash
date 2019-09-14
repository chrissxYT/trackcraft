#!/bin/bash
I=1

mkdir -p tmp

for u in $(cat src_lists) ; do
        { curl -fsSLo tmp/$I "$u" ; echo Finished $I. ; } &
        pids[${I}]=$!
        I=$(($I + 1))
done | ./progress.sh $(wc -l src_lists | awk '{ print $1 }')

for pid in ${pids[*]} ; do
        wait $pid
done

for j in $(ls tmp) ; do
        cat tmp/$j
done > blocklist

rm -rf tmp
