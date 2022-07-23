#!/bin/bash -x

isparttime=1
isfulltime=2
emprateprhr=20
numofworkingdays=20
maxrateinmonth=100

totalemphr=0
totalworkingdays=0

function getworkinghrs()
{
  case $randomcheck in
                       $isfulltime )
                           emphrs=8
                       ;;
                       $isparttime )
                           emphrs=4
                       ;;
                       *)
                           emphrs=0
                       ;;
  esac
}

while [[ $totalemphr -lt $maxrateinmonth && $totalworkingdays -lt $numofworkingdays ]]
do
      ((totalworkingdays++))
      randomcheck=$((RANDOM%3))
      getworkinghrs $randomcheck
      totalemphr=$(($emphrs+$totalemphr))
done
totalsalary=$(($totalemphr*$emprateprhr))
echo $totalsalary
