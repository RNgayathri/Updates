#!bin/sh
args=("$@")
if [ "${args[0]}" = "" ]; then
	echo "Enter file and path as command line arguments"
	else
	echo File name= ${args[0]} Path= ${args[1]} 
	cd ${args[1]}
	if [ -f ${args[0]} ]; then  
		echo "File exist and removed the file"
		rm ${args[0]}
		else 
 	        	echo "Doesn't exist and archived the given directory"
 	        	echo "enter the name of the archive file to create-"
 	        	read name
 	        	cd ..
	        	tar -cf $name ${args[1]}
	fi
fi
