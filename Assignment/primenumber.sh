#!/bin/bash -x

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
   echo $no "is prime number"
else
   echo $no "not prime number"
fi
