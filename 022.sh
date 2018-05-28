#!/bin/bash

# [Problem 22] Names scores (https://projecteuler.net/problem=22)

curl "https://projecteuler.net/project/resources/p022_names.txt" | sed 's/,/\n/g; s/\"//g;' | sort | awk -v FS="" '{
  score = 0;
  for(i=1;i<=NF;i++) score += sprintf("%d ", index("ABCDEFGHIJKLMNOPQRSTUVWXYZ", $i));
  ans += NR * score
} END { 
  print ans
}'
#=> 871198282