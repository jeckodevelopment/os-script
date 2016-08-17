#!/bin/bash
# ******************************************************************************************
# *
# *	File:			killgames.sh
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
# *		Thu Jun 14 17:03:20 CEST 2012	Prima stesura
# *	
# ******************************************************************************************
#
game1=TextEdit
game2=Preview

while true
do
	programmi=($(ps -e -opid=,comm= | cut -c6- | xargs basename))
	for i in ${programmi[*]}
	do
		if [ $i == $game1 ] || [ $i == $game2 ]
		then
			sleep 180
			killall $i
		fi
	done
	sleep 60
done