#!/bin/bash
awk 'NF' quotes.txt > check1.txt
awk 'NF' quotes.txt | awk '!my[$0]++' > check2.txt 