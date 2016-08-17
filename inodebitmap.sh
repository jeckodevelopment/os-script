#!/bin/bash
# ******************************************************************************************
# *
# *	File:			inodebitmap.sh
# *
# *	Function:		Costruire inode bitmap
# *
# *	Author:		    
# *
# *	Course:		    Sistemi Operativi I - Facoltà di Ingegneria - Università del Salento
# *
# *	Copyright:		CreativeCommons 2008 - Attribution-Noncommercial-Share Alike 2.5 Generic
# *
# *	Notes:			
# *
# *	Change History:
# *		Tue Jun 19 16:58:46 CEST 2012 	Prima stesura
# *	
# ******************************************************************************************
#
if [ $# -ne 2]; then
	echo 'Usage inodebitmap.sh inode_start how_many';
	exit;
fi

inode_start=$1
inode_end=$(($1 + $2))


a=($(find / -inum +$inode_start -inum -$inode_end -exec stat -c%i {} \; 2>/dev/null))

for ((i=inode_start; i<=inode_end; i++)); do b[i]=.; done
for i in ${a[*]}; do b[i]=x; done
for ((i=inode_start; i<=inode_end; i++)); do echo ${b[i]}; done | rs -g 0 50

