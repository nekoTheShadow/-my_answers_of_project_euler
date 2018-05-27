#!/bin/bash

# [Problem 10] Summation of primes (https://projecteuler.net/problem=10)
# 200万以下の素数をすべて合計する。
# factorコマンドを利用するだけ(´・ω・｀)

seq 2000000 | factor | awk 'NF==2{print $2}' | paste -sd+ | bc
#=> 142913828922