#!/bin/bash
aux=`awk -v d=$1 -v a=$2 -F- '$2== d && $3== a' log.txt | wc -l`
if [ $# -lt 2 ] 
then
	echo "É necessário passar dois parametros (mês do ano entre 1-12 e ano)."
else
	if [ $1 -lt 1 ] || [ $1 -gt 12 ] 
	then
		echo "Mês do ano entre 1-12."
	else
		if [ $aux -eq 0 ] 
		then
			echo "Durante o mês $1 do ano $2, para o usuário $USER, nenhum registro foi armazenado"
		else
			awk -v d=$1 -v a=$2 -F- '$2== d && $3== a' log.txt | awk '{ user+=$13; sys+=$15 } END { print "Tempo gasto por user: " user  ". Tempo gasto por sys: " sys }' 
		fi 
	fi
	
fi

