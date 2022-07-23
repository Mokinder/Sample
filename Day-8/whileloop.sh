#!/bin/bash -x

c=1
while [ $c != 3 ]
do
     echo $c
     (( c++ ))
done

