#!/bin/bash
#
INPUT="$1"
x=0
y=0
echo $x $y
while IFS= read -r -n1 c
do
	[ "$c" == "<" ] && (( x-- ))
	[ "$c" == ">" ] && (( x++ ))
	[ "$c" == "^" ] && (( y++ ))
	[ "$c" == "v" ] && (( y-- ))
	echo $x $y
done < "$INPUT"
