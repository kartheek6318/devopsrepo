#!/bin/bash

i=$#
echo "number of arguments: $i"
while [ $i -ge 0 ];
do
    echo ${BASH_ARGV[$i]}
    i=$((i-1))
done

if [[ $# -ge 0 ]];
then
	args1=$1
	args2=$2
	if [[ "$args1" == "cuser" ]];
	then
		echo "current user: $(whoami)"
	fi 
	
	if [[ "$args2" == "msg" ]];
	then
		echo "$(date +%Y%m%d): Hello World!"
	fi
else
	echo "current user: $(whoami)"
	echo "$(date +%Y%m%d): Hello World!"
fi

exit 0
