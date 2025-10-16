#!/bin/bash

read -p "Insira o nome do diretorio a ser criado:" dir

if [ -e "$dir" ]; then 
    echo "Esse diretorio ja existe"
    exit 1
else
    mkdir "$dir"
    echo "Diretorio $dir criado com sucesso"
fi

