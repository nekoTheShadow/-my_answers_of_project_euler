#!/bin/bash

# [Problem 5] Smallest multiple (https://projecteuler.net/problem=5)
# 1から20の整数すべてで割り切れる数字を求めなさい。
# 任意の整数xが6と8で割りけれるための条件は? ---> 素因数として2を4つと3を1つ含むこと。
# (cf. 6=2*3, 8=2^4)
# つまり素因数の最大の指数をかけ合わせればよい。

seq 2 20 | factor | sed 's/^.*: //g' | awk '{
  split("", temp) # 配列tempを初期化する。
  for(i=1;i<=NF;i++) temp[$i] += 1;
  for(i in temp) {
    if (counter[i] < temp[i]) counter[i] = temp[i]
  }
} END {
  for(i in counter) {
    for (j=1;j<=counter[i];j++) print(i);
  }
}' | paste -sd* | bc 

#=> 232792560