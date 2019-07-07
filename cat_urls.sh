#!/bin/sh
FILE=src_lists

for u in $(cat src_lists) ; do
        curl -L $u
done > blocklist
