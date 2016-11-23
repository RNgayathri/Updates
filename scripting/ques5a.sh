#!/bin/sh
args=("$@")
Date=`date +%Y%m%d%H%M%S`
mkdir $Date
c=$(wc -w < ${args[0]})
for i in $(seq 1 $c)
do
cp -pr --parents $(sed -n "${i}p" ${args[0]}) ~/$Date
done
ls -d 20* > dl.txt
i=20161122130000
for k in $(seq 1 $(wc -w < dl.txt))
do
j=$(sed -n "${k}p" dl.txt)
if [ $i -gt $j ];
then
tar cf $DATE/$j.tar $j
fi
done

