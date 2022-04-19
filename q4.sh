#!/bin/bash
IFS=","
read -a inputarr
n=${#inputarr[@]}
for (( i=0; i<n; i++ ))
do
    for (( j=0; j<n-1; j++ ))
    do
        c=$(( j+1 ))
        if [[ ${inputarr[j]} -gt ${inputarr[c]} ]]
        then 
            temp=${inputarr[j]}
            inputarr[j]=${inputarr[c]}
            inputarr[c]=$temp
        fi
    done
done
echo "AFTER SORTING: "
for elem in ${inputarr[@]}
do 
  echo $elem
done
