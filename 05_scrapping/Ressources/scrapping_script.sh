#!/bin/bash
mkdir ./scrap ; cd ./scrap
wget -np -nd -r -A "README*" -e robots=off http://192.168.1.32/.hidden/
i=`ls | grep README | wc -l`
i=$(($i-1))
readme="README."
while [ $i != 0 ]
do
	file=$readme$i
	str=`cat $file | grep 2`
	printf "%s" $str
	i=$(($i-1))
done
str=`cat "README" | grep -E [0-9a-f]{64}`
printf "%s" $str
