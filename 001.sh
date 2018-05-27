#!/bin/bash

# [Problem 1] Multiples of 3 and 5 (https://projecteuler.net/problem=1)
# 1000未満の自然数のうち、3と5の倍数の合計を求める。
# 3かつ5の倍数、つまり15の倍数に注意する。

cat <(seq 3 3 1000) <(seq 5 5 999) | sort | uniq | paste -sd+ | bc 
#=> 233168
