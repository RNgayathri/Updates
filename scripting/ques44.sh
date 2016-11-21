#!bin/sh
args=("$@")
if [ "${args[0]}" = "" ]; then
echo "enter filenames as command line arguments"
else
echo Filename1= ${args[0]} Filename2= ${args[1]}
c1=$(wc -w < ${args[0]})
c2=$(wc -w < ${args[1]})
if [ $c1 -eq $c2 ]; then
for i in $(seq 1 $c1)
do
t=$(sed -n "${i}p" ${args[0]})
h=$(sed -n "${i}p" ${args[1]})
useradd $t
echo $t:$h | chpasswd
done
echo "created all the users"
else
echo "cannot create user"
fi
fi
    

