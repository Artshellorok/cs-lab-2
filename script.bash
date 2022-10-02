#!/bin/bash

a=$1
b=$2
if [[ $b -eq 0 ]];
then
    echo $(( $a + $b )) $(( $a - $b )) $(( $a * $b)) '#'
else
    div=$( bc -l <<< "scale=2;$a/$b" )
    echo $(( $a + $b )) $(( $a - $b )) $(( $a * $b)) $div
fi
