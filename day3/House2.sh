#!/bin/bash
#
INPUT="$1"
x1=0
y1=0
x2=0
y2=0
echo $x1 $y1
echo $x2 $y2
while IFS= read -r -n1 c
do
	[ "$c" == "<" ] && (( x1-- ))
	[ "$c" == ">" ] && (( x1++ ))
	[ "$c" == "^" ] && (( y1++ ))
	[ "$c" == "v" ] && (( y1-- ))
	echo $x1 $y1
 	IFS= read -r -n1 c
	[ "$c" == "<" ] && (( x2-- ))
	[ "$c" == ">" ] && (( x2++ ))
	[ "$c" == "^" ] && (( y2++ ))
	[ "$c" == "v" ] && (( y2-- ))
	echo $x2 $y2
done < "$INPUT"
