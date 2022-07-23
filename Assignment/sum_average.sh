#!/bin/bash -x

r1=0
r2=0
r3=0
r4=0
r5=0
read -p "enter the first 2 digit number" r1
read -p "enter the second 2 digit number" r2
read -p "enter the third 2 digit number" r3
read -p "enter the fourth 2 digit number" r4
read -p "enter the five 2 digit number" r5
sum=$((r1+r2+r3+r4+r5))
average=$((sum/5))
echo $average "is the average."
