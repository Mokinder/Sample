#!/bin/bash -x

isparttime=1
isfulltime=2
maxrateinmonth=100
emprateprhr=20
noofworkingdays=20

totalemphr=0
totalworkingdays=0

function getworkhrs()
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

function getempwage()
{
  echo $(($totalemphr*$emprateprhr))
}

while [[ $totalemphr -lt $maxrateinmonth && 
                       $totalworkingdays -lt $noofworkingdays ]]
do
  ((totalworkingdays++))
  randomcheck=$((RANDOM%3))
  getworkhrs $randomcheck
  totalemphr=$(($totalemphr+$emphrs))
  dailywages[ $totalworkingdays ]=$(( $emphrs * $emprateprhr ))
  
done
totalsalary=$( getempwage $totalemphr )
echo ${dailywages[@]}

