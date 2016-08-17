#!/bin/bash
# ******************************************************************************************
# *
# *	File:			realtime.sh
# *
# *	Function:		Stampa continuamente l'ora completa dei secondi
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
# *		Thu May 31 10:14:49 CEST 2012 GMT+01:00	Prima stesura
# *	
# ******************************************************************************************
#
while true
do
	date +%H:%M:%S
	sleep 1
done 1>date.txt
