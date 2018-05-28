#!/bin/bash

# [Problem 20] Factorial digit sum (https://projecteuler.net/problem=20)
# 100の階乗の各位の和を求める。

seq 100 | paste -sd* | bc | grep -o [0-9] | paste -sd+ | bc
#=> 648