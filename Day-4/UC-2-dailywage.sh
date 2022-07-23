#!/bin/bash -x

present=1
rancheck=$((RANDOM%2))

if (($present == $rancheck))
then
      emphrs=8
      emprateperhr=20
      salary=$(($emphrs*$emprateperhr))
      echo $salary
else
      salary=0
      echo $salary
fi

