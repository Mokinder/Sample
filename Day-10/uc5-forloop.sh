#!/bin/bash -x

isparttime=1
isfulltime=2
emprateprhr=20
noofworkingdays=20
totalsalary=0

for (( day=1;day<=$noofworkingdays;day++ ))
do
     randomcheck=$((RANDOM%3))
       case $randomcheck in
                           $isfulltime)
                                 emphrs=8
                           ;;
                           $isparttime)
                                 emphrs=4
                           ;;
                           *)
                                 emphrs=0
                           ;;
       esac
    salary=$(($emphrs*$emprateprhr))
    totalsalary=$(($salary+$totalsalary))
done
echo $totalsalary
