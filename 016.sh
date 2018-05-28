#!/bin/bash

# [Problem 16] Power digit sum (https://projecteuler.net/problem=16)
# 2の1000乗の各位の和の合計を求める。
# bcが優秀!

echo '2^1000' | bc | sed 's/./&+/g; s/.$//g' | bc
#=> 1366