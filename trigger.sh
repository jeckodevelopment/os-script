#!/bin/bash
# ******************************************************************************************
# *
# *	File:			trigger.sh
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
# *		Tue Jun 12 16:36:47 CEST 2012	Prima stesura
# *	
# ******************************************************************************************
#

while true
do
	sleep 1
	kill -SIGUSR1 $1
done