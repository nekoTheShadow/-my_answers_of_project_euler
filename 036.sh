#!/bin/bash

# [Problem 36] Double-base palindromes (https://projecteuler.net/problem=36)

seq -f '%04g' 9999 | rev | awk '{
  # 回文数を集合palindromesに次々と登録していく。
  # cf. $0=3210のときtail=0123になるので、作成できる回文数は32100123と3210123。
  tail = sprintf("%04d", NR)
  palindromes[$0 tail] = palindromes[$0 substr(tail, 2)] = 1;
} END {
  # 回文数を出力する。のちにbcコマンドにより10進数を2進数に変換するので、そのための形式にformatして出力する。
  for (palindrome in palindromes) {
    while (match(palindrome, /^0/)) palindrome = substr(palindrome, 2, length(palindrome) - 2);
    if (int(palindrome) < 1000000) printf "ibase=10;obase=2;%d\n", palindrome;
  }
}' | sort | uniq | bc | awk '{
  # 入力された2進数が回文数かどうかを判定して、回文数の場合は所定の形式にformatして出力する。
  len = length($0)
  for (i = 1; i <= len / 2; i++) {
    if (substr($0, i, 1) != substr($0, len - i + 1, 1)) next;
  }
  printf "ibase=2;%s\n", $0;
}' | bc | paste -sd+ | bc
#=> 872187