#!/bin/sh
# question 1
DATE=`date +%Y%m%d%H%M%S`
mkdir $DATE
for k in $(seq 1 $(wc -w < $1))
do
tar cpf "${k}".tar $(sed -n "${k}p" $1)
tar xf "${k}".tar -C $DATE/
rm $k.tar
done
ls -d 20* > dl.txt
i=20161122130000
for k in $(seq 1 $(wc -w < dl.txt))
do
j=$(sed -n "${k}p" dl.txt)
if [ $i -gt $j ]
then
tar cf $j.tar $DATE/$j
fi
done
