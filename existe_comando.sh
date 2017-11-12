#!/bin/bash

pacote=$1	# parametro 1 na linha de comando

if ! type $pacote &>/dev/null
then

	echo $pacote "näo existe..."
	echo "Deseja instalar" $pacote "??"
	read resp

	if [[ $resp == 'S' || $resp == 's' ]]
	then
		echo "Instalando..."
		sleep 2
		sudo apt install -y $pacote
	else
		echo $pacote "näo instalado."
		exit
	fi

else
	echo $pacote "já está instalado no seu computador!"
fi
 
