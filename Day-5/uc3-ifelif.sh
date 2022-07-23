#!/bin/bash -x

isparttime=1
isfulltime=2
emprtperhr=20
randomcheck=$((RANDOM%3))

if [ $isfulltime -eq $randomcheck ]
then
     emphrs=8
elif [ $isparttime -eq $randomcheck ]
then
     emphrs=4
else
     emphrs=0
fi
salary=$(($emphrs*$emprtperhr))
echo $salary
