#!/bin/bash

# [Problem 30] Digit fifth powers (https://projecteuler.net/problem=30)

# この問題は探索の上限値が与えられていないが、9^5*6をとりあえずの上限値としてよい。
# 7桁以上になると、各位の和の合計よりもともとの数値のほうが大きくなってしまう。
# これはたとえば次のようなプログラムで確かめることができる。
# ---> yes | awk '{a=9**5*NR; if(NR<=length(a)){print NR}else{exit 0} }'

seq 2 $((9**5*6)) | sed 's/./&^5+/g; s/+$//' | bc | awk 'NR+1==$0' | paste -sd+ | bc
#=> 443839
