#!/bin/bash
awk 'NF' $1 | awk -F'~' '{print $2}' > names.txt
awk 'NF' $1 | awk -F'~' '{print $1}' | awk '{ print "\""$0"\""}' | sed -e 's_.*_ once said,&_' > onlyquotes.txt
paste -d '' names.txt onlyquotes.txt > speech.txt
