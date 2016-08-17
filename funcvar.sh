#!/bin/bash
# ******************************************************************************************
# *
# *	File:			funcvar.sh
# *
# *	Function:		Serve ad evidenziare lo scope delle variabili rispetto alle funzioni
# *
# *	Author:		    Franco Tommasi
# *
# *	Course:		    Sistemi Operativi I - Facoltà di Ingegneria - Università del Salento
# *
# *	Copyright:		CreativeCommons 2008 - Attribution-Noncommercial-Share Alike 2.5 Generic
# *
# *	Notes:			Provare a decommentare "#local var1" e valutare gli effetti
# *
# *	Change History:
# *			2008-02-14	Prima stesura
# *	
# *****************************************************************************************
#


function afunc
{
#local var1
echo nella funzione var1=$var1
echo argomenti nella funzione $0: $1 $2 $3
var1="IN"
echo var1 cambiata nella funzione var1=$var1
}

var1="OUT"
echo definita prima della funzione var1=$var1
echo argomenti fuori dalla funzione $0: $1 $2 $3
afunc primo secondo terzo
echo ritornati fuori dalla funzione var1=$var1
echo argomenti fuori dalla funzione $0: $1 $2 $3
