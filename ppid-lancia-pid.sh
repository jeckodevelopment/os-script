#!/bin/bash
#
# ******************************************************************************************
# *
# *	File:			script.sh
# *
# *	Function:		Creare uno script che produca un log che registri tutti i 
# *					processi lanciati all'avvio dello script con l'indicatore 
# *					di quale è il parent che li ha lanciati
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
# *		Tue May 29 13:42:15 CEST 2012 GMT+01:00	Prima stesura
# *	
# ******************************************************************************************
#
#ps -ef 1>processlog.txt

primoarray=($(ps -e -opid=)) 
for ((i=0; i < ${#primoarray[*]}; i++)) 
do
	secondoarray[i]=$(ps -p ${primoarray[i]} -oppid=) 
done
for ((i=0; i < ${#primoarray[*]}; i++)) 
do
	echo Il processo ${secondoarray[i]} ha lanciato il processo ${primoarray[i]} 
done 1> processlog.txt