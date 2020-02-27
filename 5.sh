echo OS and Release: ; uname &&uname -r
echo Kernel Version: ; uname -v
echo Available Shells: ;cat /etc/shells
echo Processor Type: ; cat /proc/cpuinfo | grep 'model name'| uniq
echo Memory information:; free -t -m
echo Disk Information :; lsblk
