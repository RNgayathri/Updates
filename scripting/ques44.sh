#!bin/sh
args=("$@")
if [ "${args[0]}" = "" ]; then
echo "enter filenames as command line arguments"
else
echo Filename1= ${args[0]} Filename2= ${args[1]}
c1= wc -w ${args[0]} | awk '{print $1}'
c2= wc -w ${args[1]} | awk '{print $1}'
if [ $c1 -eq $c2 ]; then
echo "Enter the name of user,password"
read user
read password
echo $user >> ${args[0]}
echo $password >> ${args[1]}
#sudo su
adduser $user
passwd  $user
else
echo "cannot create user"
fi
fi

    

