#!/bin/bash

NUM1=100
NUM2=500

SUM=$(($NUM1+$NUM2))

echo "Sum is $SUM"
#Arry
FRUITS=("Apple" "Banana" "Promogranet")
echo "Fruits are: ${$FRUITS[@]}"
