#!/bin/bash
# ******************************************************************************************
# *
# *	File:			cpugraph.sh
# *
# *	Function:		Stampa un grafico interattivo della CPU utilizzata da un processo
# * 				dato un PID ed un intervallo di aggiornamento
# *
# *	Author:		    Luca Marzo
# *
# *	Course:		    Sistemi Operativi I - Facoltˆ di Ingegneria - Università del Salento
# *
# *	Copyright:		CreativeCommons 2008 - Attribution-Noncommercial-Share Alike 2.5 Generic
# *
# *	Notes:			the "scale" parameter is needed for %cpu very low (try with 2 and more)
# *
# *	Change History:
# *		Thu May 31 14:49:26 CEST 2012	First draft
# *	
# ******************************************************************************************
#
pid=$1
interv=$2

#scale=${2:-2} # this line is an alternative to the following

echo ${scale:=2} > /dev/null

while true;  
do 
	cpu=$(ps -p $pid -o%cpu= | tr , .)
	sleep $interv
	b=$(echo "c=$scale*$cpu;scale=0; c/1" | bc -l);
	for (( a = 1; a < b; a++ ));  
	do   
		echo -n "-";  
	done;  
	echo '*'; 
done