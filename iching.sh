#!/bin/bash
# ******************************************************************************************
# *
# *	File:			iching.sh
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
# *		++++++++++++++ GMT+01:00	Prima stesura
# *	
# ******************************************************************************************
#
c=($(cat /Network/Servers/mach3.unile.it/Users/Shared/home_dir/lmarzo173/Documents/italian))

echo ${c[RANDOM]} ${c[RANDOM]} ${c[RANDOM]} ${c[RANDOM]} ${c[RANDOM]} ${c[RANDOM]} ${c[RANDOM]}
