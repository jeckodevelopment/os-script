#!/bin/bash
# ******************************************************************************************
# *
# *	File:			openfilescounter.sh
# *
# *	Function:		Conta il numero di file aperti dai propri processi
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
# *		Thu May 31 14:15:03 CEST 2012 GMT+01:00	Prima stesura
# *	
# ******************************************************************************************
#
echo "Numero di file aperti dai processi dell'utente corrente:" | tr '\n' ' '
lsof -u $USER | wc -l