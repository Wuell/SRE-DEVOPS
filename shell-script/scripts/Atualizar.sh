#!/bin/bash

DIR="$HOME/SRE-DEVOPS/shell-script/scripts"

sudo apt-get update
sudo apt-get upgrade
export PATH=$PATH:"$DIR"
echo "Diretorio $DIR adicionado as variaveis de ambiente"
