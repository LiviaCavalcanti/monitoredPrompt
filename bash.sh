#!/bin/bash

clear;
user=$USER
pcId="@monitoredPrompt-shell"
corUser=`tput setaf 1`
corDir=`tput setaf 7`
negrito=`tput bold`
limpa=`tput sgr0`

function get_dir {
    dir=$(pwd | awk -F $HOME '{print $2}')

    echo $dir
}

while read -e -p "${corUser}${negrito}${user}${pcId}${limpa}:${corDir}${negrito}~$(get_dir)${limpa}$ " comando 
do
	#TODO CONTAR QUANTO TEMPO O PROGRAMA DEMOROU COM O TIME

	echo $comando | time -a -o log.txt -f "O usuario $user executou o comando: $comando. TIME do comando: %E real, %U user, %S sys" bash; 


done