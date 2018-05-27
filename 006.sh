#!/bin/bash

# [Problem 6] Sum square difference (https://projecteuler.net/problem=6)
# (1^2+2^2+...+100^2)と(1+2+...+100)^2の差を求める。

cat  <(seq 100 | paste -sd+ | sed 's/.*/(&)^2/') <(seq 100 | sed 's/.*/&^2/' | paste -sd+ | sed 's/.*/(&)/g') | paste -sd- | bc