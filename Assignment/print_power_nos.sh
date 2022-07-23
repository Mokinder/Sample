#!/bin/bash -x

n=0
result=0
n1=2
read -p "Enter the power number : " n
for (( i=1 ; $i<=$n ; i++ ))
do
    result=$(( $n1 ** $i ))
    echo $result
done
