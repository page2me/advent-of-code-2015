#!/bin/bash
#
INPUT="$1"
a=0
b=0
aa=0
bb=0
a=`tr -d -C '\(' < $1 | wc -c`
b=`tr -d -C '\)' < $1 | wc -c`
echo "1. floor no. = $((a-b))"
while IFS= read -r -n1 c
do
	(( bb++ ))
	[ "$c" == "(" ] && (( aa++ ))
	[ "$c" == ")" ] && (( aa-- ))
	[ "$aa" == -1 ] && break
done < "$INPUT"
echo "2. key count = $bb"
