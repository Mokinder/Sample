#!/bin/bash -x

ispresent=1
rancheck=$((RANDOM%2))

if (($ispresent == $rancheck))
then 
      echo "Employee is present"
else
      echo "Employee is absent"
fi
