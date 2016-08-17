#!/bin/bash
# ******************************************************************************************
# *
# *	File:			usercount.sh
# *
# *	Function:		Stampare il numero di utenti connessi al sistema
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
# *		Thu May 31 10:51:20 CEST 2012 GMT+01:00	Prima stesura
# *	
# ******************************************************************************************
#
echo 'Utenti connessi:'  | tr '\n' ' '
echo who | cut -f1 -d' ' | sort | uniq | wc -l 