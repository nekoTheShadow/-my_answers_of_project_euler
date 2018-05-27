#!/bin/bash

# [Problem 2] Even Fibonacci numbers (https://projecteuler.net/problem=2)
# 400,000以下で偶数のフィボナッチ数の合計を求める。
# AWKで殴っただけ(´・ω・｀)

awk 'BEGIN {
  a = b = 1
  while(a<=4000000){
    c = a + b
    if (a % 2 == 0) sum += a;
    a = b; b = c;
  }
  print sum
}'
#=> 4613732