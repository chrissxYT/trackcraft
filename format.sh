#!/bin/sh
sed 's/\t//g' |
sed 's/ //g' |
sed 's/\r/\n/g' |
sed 's/\n\n/\n/g' |
sed 's/0\.0\.0\.0//g' |
sed 's/127\.0\.0\.1//g' |
sed 's/^#.*$//' |
sed 's/#.*$//' |
sed 's/^www\.//' |
sed 's/^.*spotify\.com.*$//' |
sed 's/^ipinfo\.io.*$//' |
sed 's/^s\.youtube\.com.*$//' |
sed 's/^s3\.amazonaws\.com.*$//' |
sed 's/^amzn\.to.*$//' |
sed 's/^storage\.googleapis\.com//' |
sort |
uniq |
tail -n +2
