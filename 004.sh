#!/bin/bash

# [Problem 4] Largest palindrome product (https://projecteuler.net/problem=4)
# 2つの3桁の数の積であらわされる回文数のうち、最大のものを求める。
# ポイントは回文数の判定。正規表現を利用するのは我ながらクレバーだと思う。

echo {100..999}\*{100..999} | sed 's/ /\n/g' | bc | grep -E '^(.)(.)(.)\3\2\1' | sort -nr | head -n1
#=> 906609