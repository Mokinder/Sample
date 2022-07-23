#!/bin/bash -x

n=0
read -p "Enter the number : " n
if [ $n -gt 100 ]
then
   echo "Number is greater than 100 "
else
   echo "Number is lesser than 100"
fi
