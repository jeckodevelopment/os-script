#!/bin/bash
# ******************************************************************************************
# *
# *	File:			psindoublearray.sh
# *
# *	Function:		Puts in two arrays data for all the  processes in the system
# *
# *	Author:		    Luca Marzo
# *
# *	Course:		    Sistemi Operativi I - Facoltà di Ingegneria - Università del Salento
# *
# *	Copyright:		CreativeCommons 2012 - Attribution-Noncommercial-Share Alike 2.5 Generic
# *
# *	Notes:			
# *
# *	Change History:
# *		Thu Apr 19 15:34:27 CEST 2012	Prima stesura
# *	
# ******************************************************************************************
#

primoarray=($(ps -e -opid=))

for ((i=0; i < ${#primoarray[*]}; i++ ))
do
	secondoarray[i]=$(ps -p ${primoarray[i]} -ouid=)
done

#Stampa a video gli array creati

for (( i=0; i < ${#primoarray[*]}; i++ ))
do
	echo ${primoarray[i]}-----${secondoarray[i]}
done