#!/bin/bash

# [Problem 9] Special Pythagorean triplet (https://projecteuler.net/problem=9)
# ピタゴラス数(a, b, c)のうちa,b,cの和が1000になるものを探索し、a*b*cを出力する。
# 全探索!全探索!全探索!全探索!全探索!全探索!

awk -v max=500 'BEGIN{
  for(a=1;a<=max;a++){
    for(b=a+1;b<=max;b++) {
      x = a * a + b * b
      c = int(sqrt(x))
      if (x == c * c && a + b + c == 1000) print(a * b * c);
    }
  }
}'
#=> 31875000