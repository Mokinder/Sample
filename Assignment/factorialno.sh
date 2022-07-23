#!/bin/bash -x

fact=0
result=1
read -p "enter the number : " fact
for (( i=1 ; $i<=$fact ; i++ ))
do
   result=$(( $result*$i ))
done
echo $result

