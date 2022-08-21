#!/bin/bash

arr01=(8 '3 6')
arr02=(1 '7 4')
arr1=(arr01 arr02)
arr=(arr1)

declare -n elmv1 elmv2

for elmv1 in "${arr[@]}"; do
    for elmv2 in "${elmv1[@]}"; do
	echo ""
	for elm in "${elmv2[@]}"; do
		echo -n " $elm"
	done
    done
done
echo ""
