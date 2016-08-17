#!/bin/bash
# ******************************************************************************************
# *
# *	File:			esame7-1.sh - contagiri.sh
# *
# *	Function:		Scrivere in bash un loop che incrementi una variabile e stampare il valore 
# * 				di tale variabile dopo un secondo
# *
# *	Author:		    Luca Marzo
# *
# *	Course:		    Sistemi Operativi I - Facoltà di Ingegneria - Università del Salento
# *
# *	Copyright:		CreativeCommons 2008 - Attribution-Noncommercial-Share Alike 2.5 Generic
# *
# *	Notes:			
# *
# *	Change History:
# *		Tue Jun 12 16:06:47 CEST 2012	Prima stesura
# *	
# ******************************************************************************************
#

i=0

trap 'echo $i; i=0' SIGUSR1

./trigger.sh $$ & #lancia lo script, prende come argomento il PID del bash e lo pone in background

while true
do
	((i++))
done
