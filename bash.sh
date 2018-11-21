#!/bin/bash

user=$USER
pcId="@monitoredPrompt-shell"


function get_dir {
    dir=$(pwd | awk -F $HOME '{print $2}')

    echo $dir
}

while read -p "${user}${pcId}:~$(get_dir)$ " comando 
do
	#TODO CONTAR QUANTO TEMPO O PROGRAMA DEMOROU COM O TIME
	$comando


done