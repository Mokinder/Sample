#!/bin/bash -x

arry=( 4 -1 -3 )
sum=0

for i in ${a[@]};
do
  sum=$(($sum+$i))
done
echo "sum=" $sum
