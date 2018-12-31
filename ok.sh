#!/bin/sh
s1="error"
s2=$(./fillit inv3.fillit)
echo $s2
if [ "$s1" == "$s2" ]
then
	echo "OK"
else
	echo " no match found"
fi
