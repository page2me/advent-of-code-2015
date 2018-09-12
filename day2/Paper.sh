#!/bin/bash
#
INPUT="$1"
b=0
bb=0
while IFS=x read -r items
do
	IFS=x read l w h <<< $items
	aa=$(($l*$w*$h))
	a=$((2*$l*$w + 2*$w*$h + 2*$h*$l))
	usort=$(echo $l $w $h| xargs -n 1| sort -n | xargs)
	IFS=" " read x y z <<< $usort 
	bb=$(($bb+$aa+(2*($x+$y))))
	b=$(($b+$a+($x*$y)))
done < "$INPUT"
echo "1. $b"
echo "2. $bb"
