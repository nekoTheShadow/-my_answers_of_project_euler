#!/bin/bash

# [Problem 19] Counting Sundays (https://projecteuler.net/problem=19)
# 20世紀において、1日が日曜日になっている月はいくつ存在するか?
# dateコマンドを利用すると楽。

echo {1901..2000}-{1..12}-1 | sed 's/ /\n/g' | xargs -P 0 -i{} date -d{} +%w | grep -c 0
#=> 171