#!/bin/bash
size=$(wc -c < $1)
echo "File size: $size"
lines=$(cat $1 | wc -l)
echo "Line count: $lines"
words=$(cat $1 | wc -w)
echo "Word count: $words"
awk '$0="Line No "NR" -Count of Words: "NF' $1
touch temp.txt
name=$1
cp $1 temp.txt
sed -i 's/ /\n/g' temp.txt
sort temp.txt | uniq -c | sort -nr | while read count name
do
        if [ ${count} -gt 1 ]
        then
                echo "Word: '${name}' -Count of repetition: ${count}"
        fi
done
