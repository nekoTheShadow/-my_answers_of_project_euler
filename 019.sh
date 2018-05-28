#!/bin/bash

echo {1901..2000}-{1..12}-1 | sed 's/ /\n/g' | xargs -P 0 -i{} date -d{} +%w | grep -c 0
#=> 171