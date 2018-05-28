#!/bin/bash

# [Problem 12] Highly divisible triangular number (https://projecteuler.net/problem=12)
# 約数の個数が500を超える三角数のうち、最小のものを求める。
# yes | awk '{NR}' <--- この発想は我ながらnice


yes | awk '{
  t = (1 + NR) * NR / 2
  
  s = sqrt(t); cnt = 0;
  for (i = 1; i < s; i++) {
    if (t % i == 0) cnt += 2;
  }
  if (t % s == 0) cnt += 1;

  if (cnt < 500) next;
  print t;
  exit 0
}'

#=> 76576500