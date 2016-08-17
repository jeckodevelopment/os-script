#!/bin/bash
# ******************************************************************************************
# *
# *	File:			readstdin.sh
# *
# *	Function:		read from standard input
# *
# *	Author:		    Franco Tommasi
# *
# *	Course:		    Sistemi Operativi I - Facoltà di Ingegneria - Università del Salento
# *
# *	Copyright:		CreativeCommons 2008 - Attribution-Noncommercial-Share Alike 2.5 Generic
# *
# *	Notes:			Esempio di script che esegue lettura da standard input
# *
# *	Change History:
# *		18/02/09-23:04	Prima stesura
# *	
# ******************************************************************************************
#

line=0
while (( line < 4096 )) && read buf[line]
do
   echo -e $line \\t  ${buf[line]}
   (( line = line + 1 ))
done
