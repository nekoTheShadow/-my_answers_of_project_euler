#!/bin/bash

# [Problem 14] Longest Collatz sequence (https://projecteuler.net/problem=14)
# 100万未満の整数のうち、どの数字を最初にすれば、最長のコラッツ数列が生成できるだろうか?
# 実質的には全探索だが、一度計算した値をキャッシュしておくことで、計算量を減らしている。

seq 1000000 | awk '{
  n = $0; cnt = 0
  while (n > 1) {
    if (n in cache) {
      cnt += cache[n]
      break;
    }
    n = (n % 2 == 0) ? n / 2 : 3 * n + 1
    cnt += 1
  }

  cache[$0] = cnt
  if (max_cnt < cnt) {
    max_cnt = cnt;
    ans = $0
  }_
} END {
  print ans;
}'