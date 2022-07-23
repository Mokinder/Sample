#!/bin/bash -x

function fun()
{
  result=$(($a*$b))
  echo $result
}

echo "enter two numbers : "
read a
read b
fun $a $b
echo "multiply of two numbers is :"$result
