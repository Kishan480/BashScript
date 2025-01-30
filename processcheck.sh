#! /bin/bash

read processname
var=$(ps aux | grep -i "$processname"| grep -v grep)
if [ -n "$var" ]; then
	echo " The '$processname' is running, Detial: "
	echo "$var"
else
	echo "Process is not Running"
fi	
