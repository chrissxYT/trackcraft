%s/\r//g
%s/0\.0\.0\.0 *//g
%s/127\.0\.0\.1 *//g
%s/^#.*\n//g
%s/#.*//g
%s/.*spotify\.com.*\n//g
%s/.*ipinfo\.io.*\n//g
sort u
