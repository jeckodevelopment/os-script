#!/bin/bash
# ******************************************************************************************
# *
# *	File:			sinusoide.sh
# *
# *	Function:		Print a sinusoid running with time
# *
# *	Author:		    Franco Tommasi
# *
# *	Course:		    Sistemi Operativi I - Facoltà di Ingegneria - Università del Salento
# *
# *	Copyright:		CreativeCommons 2008 - Attribution-Noncommercial-Share Alike 2.5 Generic
# *
# *	Notes:			
# *
# *	Change History:
# *		20080221092249	First draft
# *		20120522101800	Minor revisions
# *	
# ******************************************************************************************
#
if [ $# -ne 1 ]; then 
	echo 'Usage export COLUMNS; ./sinusoide.sh frequenza'; 
	exit; 
fi
if [ -z $COLUMNS ]; then 
	echo 'Usage: export COLUMNS; ./sinusoide.sh frequenza'; 
	exit; 
fi
ampiezza=$(( COLUMNS/2 ))
frequenza=$1
t=0; 
while true;  
do 
	b=$(echo "c=$ampiezza*s($frequenza*$t*3.14/180);scale=0; $ampiezza + c/1" | bc -l);
	for (( a = 1; a < b; a++ ));  
	do   
		echo -n " ";  
	done;  
	echo '*'; 
	((t++))
done