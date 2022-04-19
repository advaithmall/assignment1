#!/bin/bash
echo "Enter Word: "
read word
strlen=${#word}
for ((i = $strlen - 1; i >= 0; i--))
    do
    word1="$word1${word:$i:1}" 
    done
echo $word1
word2=$word1
echo $word1 | tr 'a-zA-Z' 'b-zA-Za'
N=1
let M=(strlen)/2
#echo "$word2" | cut -c$N-$M
echo "$word2" | cut -c$(( $M+1 ))-$strlen
echo "$word" | cut -c$(( $M+1 ))-$strlen
