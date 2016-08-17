#!/bin/bash
# ******************************************************************************************
# *
# *	File:			parametersubstitution.sh
# *
# *	Function:		demo parameters substitution rules
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
# *		23 febbraio 2009 23:34:56 GMT+01:00	Prima stesura
# *	
# ******************************************************************************************
#
var1=abcd12345abc6789
echo var1=$var1
echo var2=$var2
echo
echo
echo '********* ${parameter:-word} **********'
echo
echo 'echo ${var1:-pasquale}' -\> ${var1:-pasquale}
echo 'echo ${var2:-pasquale}' -\> ${var2:-pasquale}
echo
echo var1=$var1
echo var2=$var2
echo
echo
echo '********* ${parameter:=word} **********'
echo
echo var1=$var1
echo var2=$var2
echo
echo 'echo ${var1:=pasquale}' -\> ${var1:=pasquale}
echo 'echo ${var2:=pasquale}' -\> ${var2:=pasquale}
echo
echo var1=$var1
echo var2=$var2
echo
echo unsetting var2 ...
unset var2
echo var2 unset
echo
echo
echo '********* ${parameter:?word} **********'
echo
echo var1=$var1
echo var2=$var2
echo
echo 'echo ${var1:?pasquale}' -\> ${var1:?pasquale}
#echo '${var2:?pasquale}' ${var2:?pasquale}
echo
echo var1=$var1
echo var2=$var2
echo
echo
echo '********* ${parameter:+word} **********'
echo
echo var1=$var1
echo var2=$var2
echo
echo 'echo ${var1:+giovanni}' -\> ${var1:+giovanni}
echo 'echo ${var2:+giovanni}' -\> ${var2:+giovanni}
echo
echo var1=$var1
echo var2=$var2
echo
echo
echo '********* ${parameter:offset} **********'
echo
echo var1=$var1
echo var2=$var2
echo
echo 'echo ${var1:0}' -\> ${var1:0}
echo 'echo ${var1:2}' -\> ${var1:2}
echo 'echo ${var1:4}' -\> ${var1:4}
echo 'echo ${var1:7}' -\> ${var1:7}
echo
echo var1=$var1
echo var2=$var2
echo
echo
echo '********* ${parameter:offset:length} **********'
echo
echo var1=$var1
echo var2=$var2
echo
echo 'echo ${var1:0:3}' -\> ${var1:0:3}
echo 'echo ${var1:2:5}' -\> ${var1:2:5}
echo 'echo ${var1:4:7}' -\> ${var1:4:7}
echo 'echo ${var1:7:1}' -\> ${var1:7:1}
echo
echo var1=$var1
echo var2=$var2
echo
echo
echo '********* ${!prefix*} **********'
echo
var2=trentatretrentini
echo assegnazione 'var2=trentatretrentini'
echo var1=$var1
echo var2=$var2
echo
echo '${!var*}' ${!var*}
echo
echo var1=$var1
echo var2=$var2
echo
echo
echo '********* ${#parameter} **********'
echo
echo var1=$var1
echo var2=$var2
echo
echo '${#var1}' ${#var1}
echo '${#var2}' ${#var2}
echo
echo var1=$var1
echo var2=$var2
echo
echo
echo '********* ${parameter#word} **********'
echo
echo var1=$var1
echo var2=$var2
echo
echo '${var1#abc}' ${var1#abc}
echo '${var2#tre}' ${var2#tre}
echo
echo var1=$var1
echo var2=$var2
echo
echo '${var1#a*c}' ${var1#a*c}
echo '${var2#t*e}' ${var2#t*e}
echo
echo var1=$var1
echo var2=$var2
echo
echo
echo '********* ${parameter##word} **********'
echo
echo var1=$var1
echo var2=$var2
echo
echo '${var1##abc}' ${var1##abc}
echo '${var2##tre}' ${var2##tre}
echo
echo var1=$var1
echo var2=$var2
echo
echo '${var1##a*c}' ${var1##a*c}
echo '${var2##t*e}' ${var2##t*e}
echo
echo var1=$var1
echo var2=$var2
echo
echo
echo '********* ${parameter%word} **********'
echo
echo var1=$var1
echo var2=$var2
echo
echo '${var1%789}' ${var1%789}
echo '${var2%ini}' ${var2%ini}
echo
echo var1=$var1
echo var2=$var2
echo
echo '${var1%a*9}' ${var1%a*9}
echo '${var2%tre*i}' ${var2%tre*i}
echo
echo var1=$var1
echo var2=$var2
echo
echo
echo '********* ${parameter%%word} **********'
echo
echo var1=$var1
echo var2=$var2
echo
echo '${var1%%789}' ${var1%%789}
echo '${var2%%ini}' ${var2%%ini}
echo
echo var1=$var1
echo var2=$var2
echo
echo '${var1%%a*9}' ${var1%%a*9}
echo '${var2%%tre*i}' ${var2%%tre*i}
echo
echo var1=$var1
echo var2=$var2
echo
echo
echo '********* ${parameter/pattern/string} **********'
echo
echo var1=$var1
echo var2=$var2
echo
echo '${var1/abc/pasquale}' ${var1/abc/pasquale}
echo '${var2/tre/quattro}' ${var2/tre/quattro}
echo
echo var1=$var1
echo var2=$var2
echo
echo '${var1/a*c/pasquale}' ${var1/a*c/pasquale}
echo '${var2/t*e/quattro}' ${var2/t*e/quattro}
echo
echo var1=$var1
echo var2=$var2
echo
echo
echo '********* ${parameter//pattern/string} **********'
echo
echo var1=$var1
echo var2=$var2
echo
echo '${var1//abc/pasquale}' ${var1//abc/pasquale}
echo '${var2//tre/quattro}' ${var2//tre/quattro}
echo
echo var1=$var1
echo var2=$var2
echo
echo '${var1//a*c/pasquale}' ${var1//a*c/pasquale}
echo '${var2//t*e/quattro}' ${var2//t*e/quattro}
echo
echo var1=$var1
echo var2=$var2

# Nei due casi precedenti: If  pattern
# begins  with  #,  it must match at the beginning of the expanded
# value of parameter.  If pattern begins with %, it must match  at
# the  end of the expanded value of parameter.  If string is null,
# matches of pattern are deleted and the / following  pattern  may
# be  omitted.
echo
echo '********* Fine della dimostrazione **********'
echo '******* Leggere la nota nello script ********'


