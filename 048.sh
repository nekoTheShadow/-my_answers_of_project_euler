# [Problem 48] Self powers (https://projecteuler.net/problem=48)

seq 1000 | awk '{print $0 "^" $0}' | paste -sd+ | bc | sed 's/\\//g' | paste -sd'\0' | rev | fold -w10 | head -n1 | rev
#=> 9110846700
