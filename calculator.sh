#! /bin/bash

echo "Basic Calculator"
addfun(){
	result=$((number1 + number2))
	echo "Sum is : $result"
}
subfun(){
	result=$((number1-number2))
	echo "Difference is: $result"
}

multifun(){
	result=$((number1*number2))
	echo "Answer is : $result"
}
dividefun(){
	if [ "$number2" != 0 ];then
		result=$((number1/number2))
		echo "Result is : $result"
	else
		echo "Divide by 0 is not possible"
	fi
}
while true;do
	echo " Enter action (add, sub, multi, divide, exit to quit) "
	read action
	echo "Enter the Action:" 
	if [ "$action" = "exit" ];then
		echo "Stopping the calculator..."
		sleep 1
		echo " Calculator stopped"
		break
	fi
	if [[ "$action" != "add" && "$action" != "sub" && "$action" != "multi" && "$action" != "divide" ]]; then
		echo "Invalid Action Input, Please try again"
		continue
	fi
	echo " Enter number1: "
	read number1
	echo "Enter number2: "
	read number2
	case "$action" in
		add)
			addfun
			;;
		sub)
			subfun
			;;
		multi)
			multifun
			;;
		divide)
			dividefun
			;;
		*)
			echo "Invalid Action"
			;;
	esac
done
