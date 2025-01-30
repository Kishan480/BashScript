#! /bin/bash

for N in $(seq 1 10); do
	var1=$(df -Th | awk -v line="$N" 'NR==line {print $6}'| tr -d '%')
	if [ -n "$var1" ];then
		#echo "Usage is: $var1"
		if [ "$var1" -gt 20 ]; then
			echo " Warning disk usage exceeds 20% (usgae is $var1%)"
		elif [ "$var1" -ne 0 ];then
			echo " usage is : $var1"
		else
			continue
		fi
	else
		continue
	fi
done





