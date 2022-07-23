#!/bin/bash -x

read a
rev=""
temp=$a
function pal()
{
 while [ $a -gt 0 ]
 do
    s=$(( $a%10 ))
    a=$(( $a/10 ))
    rev=$(echo ${rev}${s})
 done

 if (( $temp == $rev ))
 then
     echo "number is palindrome"
 else
    echo "number is not palindrome"
 fi
}
pal $a $s $rev
