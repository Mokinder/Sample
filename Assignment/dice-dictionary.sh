#!/bin/bash -x

no=0
declare -A diceroll
read -p "Enter the no of the times should roll : " no
function roll()
{
   dice=$((RANDOM%7+1))
}

for(( i=1;$i<=$no;i++ ))
do
   roll $dice
   diceroll[$i]=$dice
done

echo "The no of times the dice rolled : " ${!diceroll[@]}
echo "The dice values stored : " ${diceroll[@]}

