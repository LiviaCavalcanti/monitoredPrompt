printf "Histograma\n"
awk -v d=$(date +%m) -F- '$2== d' log.txt | awk '{ print $7 }' | sort|uniq -c
aux=`awk -v d=$1 -F- '$2== d' log.txt | wc -l`
printf "\n"
if [ $aux -eq 0 ] 
then
	echo "Durante o mês $1, para o usuário $USER, nenhum registro foi armazenado"
else
	awk -v d=$1 -F- '$2== d' log.txt | awk '{ user+=$13; sys+=$15 } END { print "Tempo gasto por user: " user  ". Tempo gasto por sys: " sys }' 
fi 
