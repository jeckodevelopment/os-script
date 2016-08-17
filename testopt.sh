#!/bin/bash
# ******************************************************************************************
# *
# *	File:			testopt.sh
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
# *		Thu May 31 16:58:08 CEST 2012 GMT+01:00	Prima stesura
# *	
# ******************************************************************************************
# i ":" vanno dopo le opzioni che prendono argomenti
while getopts ":a:bc:" opt; do
	case $opt in 
	a  ) echo vista opzione -a $OPTARG argomento della opzione ;;
	
	b  ) echo vista opzione -b ;;
	
	c  ) echo vista opzione -c $OPTARG argomento della opzione ;;
	
	\? ) echo 'usage: testopt.sh [-a aarg] [-b ] [-c cargs] args..'
		 exit 1
	 
	esac
done
# $OPTIND dice di quanto si deve shiftare per dare $1 al primo argomento non opzione
shift $(($OPTINFD - 1))

echo OPTIND=$OPTIND
echo primo argomento $1
echo secondo argomento $2