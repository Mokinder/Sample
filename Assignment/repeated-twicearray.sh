#!/bin/bash -x

r=()
for(( i=0;$i<=100;i++ ))
do
  rp[$i]=$i
done

for n in ${rp[@]};
do
   if(( $n%11 == 0 ))
   then
      r+=" "$n
   fi
done
echo "The values are "${r[@]}
