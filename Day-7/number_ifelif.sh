#!/bin/bash -x

n=0
read -p "Enter the number between 1 to 5 : " n
if (( $n == 1 ))
then 
    echo "one"
elif (($n == 2 ))
then 
   echo "two"
elif (( $n == 3 ))
then
   echo "three"
elif (( $n == 4 ))
then 
   echo "four"
elif (( $n == 5 ))
then
   echo "five"
else
   echo "no match"
fi
