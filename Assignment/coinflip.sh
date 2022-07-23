#!/bin/bash -x

flip=$((RANDOM%2))

if (( $flip == 1 ))
then
   echo " Heards "
else
   echo " Tails"
fi
