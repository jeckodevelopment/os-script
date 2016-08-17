#!/bin/bash
# ******************************************************************************************
# *
# *	File:			stripspaces.sh
# *
# *	Function:		Delete spaces from filenames
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
# *		Tue Apr 17 15:50:51 CEST 2012	Prima stesura
# *	
# ******************************************************************************************
#
cd $1

for FILE in *
do
	if [ -f "$FILE" ]; then
			FILE_NEW=$(echo "$FILE" | tr ' ' '_')
			mv "$FILE" $FILE_NEW
	fi
done