#!bash/bin/
args=("$@")
echo File name= ${args[0]} Path= ${args[1]} 
cd ${args[1]}
if [ -f ${args[0]} ]; then  
	echo "file exist and removed the file"
	rm ${args[0]}
		else 
 	echo "doesnot exist and archived the given directory"
	tar -cf archived2.tar ${args[2]}
fi
