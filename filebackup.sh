#! /bin/bash

backupfun(){
	var=$(timedatectl | grep -i local|grep -oP '\d{4}-\d{2}-\d{2}')
	echo "Creating backup of $filename .."	
	touch "${filename}-${var}.bak"
	sleep 2
	echo "Backup file created"
}
echo " Enter File Name :" && read filename
if [ -e "$filename" ];then
	echo "$filename already exist"
	backupfun
else 
	echo "File does not exist, Creating File.."
	touch $filename
	sleep 2
	echo "File created"
	backupfun
fi



