#!/bin/bash -x
n=0
i=1
result=0
read -p "enter the number : " n
while (( $i<=$n && $result<=256 ))
do
   
   
       result=$(( 2**i ))
       echo "2 * " $i " = " $result
       ((i++))
   
done
