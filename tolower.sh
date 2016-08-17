#!/bin/bash
# ******************************************************************************************
# *
# *	File:			tolower.sh
# *
# *	Function:		Modificare i nomi dei file in una cartella sostituendo alle 
# * 				lettere maiuscole, lettere minuscole.
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
# *		Tue May 29 14:49:48 CEST 2012 GMT+01:00	Prima stesura
# *	
# ******************************************************************************************
#
cd $1
for FILE in * 
do
	if [ "$FILE" ]; then 
	FILE_NEW=$(echo "$FILE" | tr -s '[:upper:]' '[:lower:]') 
	mv "$FILE" $FILE_NEW
fi 
done