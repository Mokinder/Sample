#!/bin/bash -x

counter=0
fruit[((counter++))]="apple"
fruit[((counter++))]="guava"
fruit[((counter++))]="raspberry"
echo ${fruit[@]}
echo ${fruit[0]}
echo ${fruit[@]:1}
