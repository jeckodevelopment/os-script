#!/bin/bash


if [ $(uname) == Darwin ]
then 
	j=0
	for i in $(ls $1)
	do
	 	a=$(stat -f%z $i)
	 	j=$((j+a))
	done
	echo $h
	elif [ $(uname) == Linux ]
		for i in $(ls $1)
		do
	 	a=$(stat -c%s $i)
	 	j=$((j+a))
		done
	echo $j
then
	echo che sistema operativo utilizzi?
fi | bc
echo '$* =' $*