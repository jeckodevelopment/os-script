#!/bin/bash
# ******************************************************************************************
# *
# *	File:			iching2.sh
# *
# *	Function:		English iChing
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
c=($(cat /usr/share/dict/words))

LUNGH=${#c[*]}

a="$(echo ${c[$((RANDOM*RANDOM%LUNGH))]} \
${c[$((RANDOM*RANDOM%LUNGH))]} ${c[$((RANDOM*RANDOM%LUNGH))]} \
${c[$((RANDOM*RANDOM%LUNGH))]} ${c[$((RANDOM*RANDOM%LUNGH))]} \
${c[$((RANDOM*RANDOM%LUNGH))]} ${c[$((RANDOM*RANDOM%LUNGH))]} )"

echo $a

say $a