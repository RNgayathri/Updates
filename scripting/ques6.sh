#!/bin/sh
args=("$@")
if [ "${args[0]}" != "" ]; then
cd ${args[0]}
fi
ts=".txt"
ls -S
ls -S > test6.txt
c=$(wc -w < test6.txt)
for i in $(seq 1  $c)
do
c1="$(sed -n "${i}p" test6.txt)"
if [ -s $c1 ]; then
c2="${c1}"
else
echo "${c1} is empty enter y to remove"
read ch
if [[ $ch == "y" ]]; then 
rm -i "${c1}"
fi
fi
done
pwd >t1.txt
te=$(sed "s/\//-/g" t1.txt)
rename 's/'${args[1]}'//g' *.*
mv "${args[1]}" "R_${te}"
ls
