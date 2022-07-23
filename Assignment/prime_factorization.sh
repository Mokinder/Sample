#!/bin/bash -x

function primefact()
{
  while (($n%2==0))
  do
     echo 2
     n=$(($n/2))
  done
  
  for ((i=3;$i<=$n;i=$i+2))
  do
    while(($n%$i==0))
    do
      echo $i
      n=$(($n/$i))
    done
  done
  if(($n/2))
  then
     echo $n
  fi
}

n=0
read -p "Enter the number : " n
primefact $n


function prime()
{
  no=0
  np=0
  p=0
  read -p "Enter the number : " no
  if (( $no == 0 || $no == 1 ))
  then
      echo "The number is not a prime number"
  else
  for ((i=2;$i<=$no ;i++ ))
  do
     if (( $no%$i == 0 ))
     then
          (( p++ ))
          echo $p
     else
          (( np++ ))
     fi
  done
  fi
  echo $p
  echo $np
  if (($p == 1 ))
  then
     echo $no 
  else
     echo $no 
  fi
}


fact=0
result=()
read -p "enter the number : " fact
for (( i=1 ; $i<=$fact ; i++ ))
do
   result+=$(( $result*$i ))
done
echo $result
