#!/bin/bash
# ******************************************************************************************
# *
# *	File:			subnetping.sh
# *
# *	Function:		*****************
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
# *		++++++++++++++ GMT+01:00	Prima stesura
# *	
# ******************************************************************************************
#
# for  ((a=1; a<255; a++))
# do
#	if 
#	ping -q -o -t 1 10.0.12.$a
#	then
#	echo 10.0.12.$a
#	fi
# done
	
	
	
for (( a=1; a<255; a++ ))
do
if
ping -o -t 1 10.0.12.$a > /dev/null
then
echo 10.0.12.$a 'è attivo'
fi
done