#!/bin/bash
# ******************************************************************************************
# *
# *	File:			esempiocase.sh
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
# *		Thu May 31 16:43:50 CEST 2012 GMT+01:00	Prima stesura
# *	
# ******************************************************************************************
#
echo che sport preferisci?
read sport
case "$sport" in 
	  "calcio"   ) echo "Ti piace il calcio";; 
	  "basket"   ) echo "Ti piace il basket";; 
	  "rugby"   ) echo "Ti piace il rugby";; 
	  'bob a 4'   ) echo "Ti piace il bob a 4";; 
	  'salto in alto'   ) echo "Ti piace il salto in alto";; 
	  *             ) echo "Stattene a casa e cresci la panza!" ;; 
	esac      #  
