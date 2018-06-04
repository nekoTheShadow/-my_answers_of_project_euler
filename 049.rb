# [Problem 49] Prime permutations (https://projecteuler.net/problem=49)

require 'prime'

Prime.each(10000)
     .select{|digit| 1000 <= digit}                         # 4桁の素数のみを取り出す。
     .group_by{|digit| digit.to_s.chars.sort}               # 素数を分類する。キーはその構成要素。
     .select{|_, group| group.size >= 3}                    
     .flat_map{|_, group| group.combination(3).map(&:sort)} # 同じキーを持つ素数からなり、長さ=3の数列を全列挙する。
     .select{|p1, p2, p3| p1 - p2 == p2 - p3}               # 等差数列になるものだけを取り出す。
     .map(&:join)                                           
     .each{|ans| puts ans}                                  #=> 148748178147, 296962999629