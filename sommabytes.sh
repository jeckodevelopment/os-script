#!/bin/bash

if [ $(uname) == Darwin ]
then 
	find $* -type f -exec stat -f%z {} \; 2>/dev/null | tr \\n +
	echo 0
elif [ $(uname) == Linux ]
	find $* -type f -exec stat -c%s {} \; 2>/dev/null | tr \\n +
	echo 0
then
	echo che sistema operativo utilizzi?
fi | bc
echo '$* =' $*