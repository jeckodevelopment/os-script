#!/bin/bash
# ******************************************************************************************
# *
# *	File:			select.sh
# *
# *	Function:		Dimostrazione del funzionamento del Select
# *
# *	Author:		    Franco Tommasi
# *
# *	Course:		    Sistemi Operativi I - Facoltà di Ingegneria - Università del Salento
# *
# *	Copyright:		CreativeCommons 2008 - Attribution-Noncommercial-Share Alike 2.5 Generic
# *
# *	Notes:			
# *
# *	Change History:
# *		20080219235500	Prima stesura
# *	
# ******************************************************************************************
#

PS3='Scegli il tuo formaggio preferito: ' # fissa la stringa di prompt. 
select formaggio in "scamorza" "cacio ricotta" "gavoi" "toscanello" "pecorino" 
do 
  echo 
  echo "$formaggio ??!! ...."
  echo "Buon appetito!" 
  echo 
  break  # Senza il break non esce mai dal loop
done 
PS3='Scegli il tuo sport favorito: ' # fissa la stringa di prompt. 


select sport in "calcio" "basket" "rugby" "bob a 4" "salto in alto" 
do 
	case "$sport" in 
	  "calcio"   ) echo "Ti piace il calcio";; 
	  "basket"   ) echo "Ti piace il basket";; 
	  "rugby"   ) echo "Ti piace il rugby";; 
	  'bob a 4'   ) echo "Ti piace il bob a 4";; 
	  'salto in alto'   ) echo "Ti piace il salto in alto";; 
	  *             ) echo "Stattene a casa e cresci la panza!" ;; 
	esac      #  
	break  # Senza il break non esce mai dal loop
done 
