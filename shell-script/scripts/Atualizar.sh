#!/bin/bash

DIR="$HOME/SRE-DEVOPS/shell-script/scripts"

sudo apt-get update
sudo apt-get upgrade
export PATH="$PATH:$DIR"
if echo "$PATH" | grep -q "$DIR"; then
	echo "Diretorio $DIR adicionado as variaveis de ambiente"
else
	echo "Diretorio $DIR nao foi adicionado as variaveis de ambiente"
fi
