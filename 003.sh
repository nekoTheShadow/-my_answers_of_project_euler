#!/bin/bash

# [Problem 3] Largest prime factor (https://projecteuler.net/problem=3)
# 600851475143の素因数のうち、最大のものを求める。
# これはfactorを利用すればらくらく。

factor 600851475143 | sed 's/^[0-9]*: //; s/ /\n/g' | sort -nr | head -n1
#=> 6857