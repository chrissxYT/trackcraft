#!/bin/sh
sed 's/\r/\n/g' |
sed 's/\n\n/\n/g' |
sed 's/0\.0\.0\.0//g' |
sed 's/127\.0\.0\.1//g' |
sed 's/\t//g' |
sed 's/ //g' |
sed 's/^#.*\n//g' |
sed 's/#.*//g' |
sed 's/^www\.//' |
sed 's/.*spotify\.com.*\n//g' |
sed 's/.*ipinfo\.io.*\n//g' |
sed 's/s\.youtube\.com.*\n//g' |
sed 's/s3\.amazonaws\.com.*\n//g' |
sed 's/amzn\.to.*\n//g' |
sed 's/^storage\.googleapis\.com.*\n//g' |
sort |
uniq |
tail -n +2
