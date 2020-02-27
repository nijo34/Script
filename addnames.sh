#!/bin/bash
if [ "$#" -ne 2 ]; then
echo "Arguments missing!"
exit
fi

FILE=$1
if test -f "$FILE";
then
echo "$FILE file exists"

else
echo "$FILE file does not exist"
exit
fi

if grep -w "$2" $FILE
then
echo "Username already present"
else
echo $2>>$1
echo "Username added!"
fi
