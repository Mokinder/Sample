#!/bin/bash -x

dice1=$((RANDOM%7+1))
dice2=$((RANDOM%7+1))
result=$((dice1+dice2))
echo $result
