# PREVIA DO HISTOGRAMA
awk -v d=$(date +%m) -F- '$2== d' log.txt | awk '{ print $7 }' | sort|uniq -c