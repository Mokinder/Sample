#!/bin/bash -x

isparttime=1
isfulltime=2
emprateprhr=20
numofworkingdays=20
maxrateinmonth=100

totalemphr=0
totalworkingdays=0

while [[ $totalemphr -lt $maxrateinmonth && 
                $totalworkingdays -lt $numofworkingdays ]]
do
   (( totalworkingdays++ ))
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
  totalemphr=$(($totalemphr+$emphrs))
done
totalsalary=$(($totalemphr*$emprateprhr))
echo $totalsalary
