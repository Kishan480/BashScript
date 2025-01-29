#! /bin/bash
echo "Enter filename: " && read filename
echo "Enter string to search: " && read searchstring
echo "Enter the string to replace:" && read replacestring
searchstringfun() {
	count=$(grep -c $searchstring $filename)
	echo "Count of string to be replaced: $count"

}
replacestring(){
	sed -i "s/$searchstring/$replacestring/g" "$filename"
	
}

if [ -e "$filename" ];then
	echo "File found, searching for similar strings"
	sleep 2
	searchstringfun
	echo " replacing $searchstring with $replacestring"
	sleep 2
	replacestring
	echo " All string replaced"
else
	echo " File does not exist"
fi

