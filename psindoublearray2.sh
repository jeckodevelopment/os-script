#!/bin/bash
# ******************************************************************************************
# *
# *	File:			psindoublearray2.sh
# *
# *	Function:		Puts in two arrays data for all the  processes in the system
# *
# *	Author:		    Luca Marzo
# *
# *	Course:		    Sistemi Operativi I - Facoltà di Ingegneria - Università del Salento
# *
# *	Copyright:		CreativeCommons 2012 - Attribution-Noncommercial-Share Alike 2.5 Generic
# *
# *	Notes:			a second version of psindoublearray.sh, where the PID
# * 				from the first array is used as an index
# * 				for the second array (which therefor will be sparse)
# *
# *	Change History:
# *		Thu Apr 19 16:12:41 CEST 2012	Prima stesura
# *	
# ******************************************************************************************
#
primoarray=($(ps -e -opid=))

for ((i=0; i < ${#primoarray[*]}; i++ ))
do
	secondoarray[${primoarray[i]}]=$(ps -p ${primoarray[i]} -oppid=)
done

#Stampa a video gli array creati
for (( i=0; i < ${#primoarray[*]}; i++ ))
do
	echo ${primoarray[i]}' <---> '${secondoarray[${primoarray[i]}]}
done
