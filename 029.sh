#!/bin/bash

# [Problem 29] Distinct powers (https://projecteuler.net/problem=29)

echo {2..100}^{2..100} | sed 's/ /\n/g' | bc | sed -n 'H; ${x; s/^\n//g; s/\\\n//g; p}' | sort | uniq | wc -l
#=> 9183
