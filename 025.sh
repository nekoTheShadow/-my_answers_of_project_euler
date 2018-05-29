#!/bin/bash

# [Problem 25] 1000-digit Fibonacci number (https://projecteuler.net/problem=25)

yes | awk -M '{fib[NR] = NR <= 2 ? 1 : fib[NR - 1] + fib[NR - 2]} (length(fib[NR]) == 1000){print NR; exit 0}'
