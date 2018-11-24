# PREVIA DO HISTOGRAMA
awk -v d=$(date +%m) -F- '$2== d' log.txt | awk '{ print $7 }' | sort|uniq -c

# awk -v d=$(date +%m) -F- '$2== d' log.txt | awk '{ print $13" "$15 }'  falta fazer a soma dos tempos de sys e de user