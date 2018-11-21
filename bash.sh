#!/bin/bash

clear;
user=$USER
pcId="@monitoredPrompt-shell"
corUser=`tput setaf 1`
corDir=`tput setaf 7`
negrito=`tput bold`
limpa=`tput sgr0`
diretorioDoSH=$(pwd)"/log.txt"
echo $diretorioDoSH
function get_dir {
    dir=$(pwd | awk -F $HOME '{print $2}')

    echo $dir
}

while read -e -p "${corUser}${negrito}${user}${pcId}${limpa}:${corDir}${negrito}~$(get_dir)${limpa}$ " -a comando 
do
	#TODO CONTAR QUANTO TEMPO O PROGRAMA DEMOROU COM O TIME

	if [ ${comando[0]} = "cd" ]  
	then
		${comando[@]}
	else
		if [ ${comando[0]} = "exit" ]
		then
			${comando[@]}
		else
			echo ${comando[@]} | time -a -o $diretorioDoSH -f "O usuario $user executou o comando: $comando. TIME do comando: %E real, %U user, %S sys" bash
		fi
	fi



done