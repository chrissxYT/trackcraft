%s/\r//g
%s/0\.0\.0\.0 *//g
%s/127\.0\.0\.1	//g
sort u
%s/^#.*\n//g
%s/#.*//g
normal gg
normal 2dd
%s/.*spotify\.com.*\n//g
%s/.*ipinfo\.io.*\n//g
%s/s\.youtube\.com.*\n//g
%s/s3\.amazonaws\.com.*\n//g
%s/amzn\.to.*\n//g
wq
