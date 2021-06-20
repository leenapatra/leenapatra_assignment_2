#! /bin/sh

# this is a sample script that displays user data.

userName=$1

# fetch all current file
cd /LEENA/unit_case/
fileList=`ls *.txt`

flag=false

# check for the input and compare against the files present with us. if found, set flag 
fileExists() {	
	for x in $fileList; do
		if [[ $x == $userName.txt ]]; then
			flag=true
		fi
 	done
        echo $flag
}


fileValid=$(fileExists)

# validation for input

if [[ "$userName" =~ [^a-zA-Z] ]]; then
 	#validate that your input contain only alphabet
	echo "Please enter Valid Name"
elif [[ "$fileValid" != "true" ]]; then
	echo "Requested User Data not found..."
else
	#print the output, as all criteria met
	echo "Please enter Valid Name"
	sleep 2s
	cat /LEENA/unit_case/$userName.txt
fi


exit 0;
