#!/bin/bash

# [Problem 35] Circular primes (https://projecteuler.net/problem=35)

seq 2 1000000 | factor | awk '
# 100万未満のすべての素数を集合primesに格納する。
(NF==2) {
  primes[$2] = 1
}

# すべての素数について巡回素数かどうかを判定する。
END {
  for (prime in primes) {
    is_circle = 1
    for(i=1;i<length(prime);i++) {
      circle = substr(prime, i + 1) substr(prime, 1, i)
      if (!(circle in primes)) is_circle = 0;
    }
    if (is_circle) print prime;
  }
}' | wc -l 