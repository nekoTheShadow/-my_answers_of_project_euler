#!/bin/bash

# [Problem 21] Amicable numbers (https://projecteuler.net/problem=21)
# 10000未満の友愛数の合計を求める。

seq 10000 | awk '{
  n = $0; root = sqrt(n); sum = 0
  for (i = 1; i < root; i++) {
    if (n % i == 0) sum += i + n / i;
  }
  if (n % root == 0) sum += root;
  d[n] = sum - n
} END {
  for(a in d) {
    b = d[a]
    if (a != b && d[b] == a) ans += a;
  }
  print ans;
}'
#=> 31626