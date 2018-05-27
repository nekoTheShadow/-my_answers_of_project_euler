#!/bin/bash

# [Problem 7] 10001st prime (https://projecteuler.net/problem=7)
# 10001番目の素数を求める。
# 素因数を列挙するfactorコマンドを利用する。なお素数は素因数を1つしか持たない数である。

seq 999999 | factor | awk 'NF==2{print $2}' | head -n 10001 | tail -n1
#=> 104743