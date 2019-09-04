set noreadonly
%s/\r/\r/g
%s/\n\n/\r/g
%s/0\.0\.0\.0//g
%s/127\.0\.0\.1//g
%s/\t//g
%s/ //g
%s/^#.*\n//g
%s/#.*//g
%s/^www\.//
sort u
%s/.*spotify\.com.*\n//g
%s/.*ipinfo\.io.*\n//g
%s/s\.youtube\.com.*\n//g
%s/s3\.amazonaws\.com.*\n//g
%s/amzn\.to.*\n//g
%s/^storage\.googleapis\.com.*\n//g
normal ggdd
sort u
wq
