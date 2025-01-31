#! /bin/bash

echo " Enter user to add or delete or list" && read user
var=$(grep -i "$user" /etc/passwd)

useraddfun(){
	if [ -z "$var" ]; then
		useradd $user
		sleep 2
		passwd $user
		sleep 2
		echo "User added successfully "
		echo "$var"
	else
		sleep 2	
		echo "user already exit"
	fi
}
deluser(){
	if [ -z "$var" ];then
		echo "user does not exist"
	else
		echo " Deleting user..."
		userdel $user
		sleep 2
		echo "User deleted"
	fi
}
listuser(){
	if [ -z "$var" ]; then
		echo " user does not exit"
	else
		echo "$var"
	fi
}
echo "Enter action (adduser, deleteuser, listuser, exit to quit)"
read option
case "$option" in
	adduser)
		useraddfun
		;;
	
	deleteuser)
		deluser
		;;
	listuser)
		listuser
		;;
	exit)
		echo "Exiting .."
		exit
		;;
	*)
		echo "Invalid option, Please inter a valid option"
		;;
esac
	


