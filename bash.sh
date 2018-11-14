#!/bin/bash
while [ 1 ]
do
	#TODO TRATAR O NOME DO USUARIO E A MAQUINA
	read -p "usuario@lcc1-02:~$: "comando
	echo time
	$comando
	echo time

done