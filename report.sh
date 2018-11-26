printf "Histograma\n"
awk -v d=$(date +%m) -F- '$2== d' log.txt | awk '{ print $7 }' | sort|uniq -c
printf "\n"
awk -v d=$(date +%m) -F- '$2== d' log.txt | awk '{ user+=$13; sys+=$15 } END { print "Tempo gasto por user: " user  ". Tempo gasto por sys: " sys }' 