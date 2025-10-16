#!/bin/bash

echo "1. Criar ambiente teste"
echo "2. Apagar ambiente teste"

read -p "Escolha uma opcao: " option
read -p "Digite o nome do Diretorio: " -a DIRS

BASE_DIR="$HOME/SRE-DEVOPS/shell-script/scripts"

case "$option" in
    "1")
        for DIR in "${DIRS[@]}"; do 
            if [ -e "$BASE_DIR/$DIR" ]; then
                echo "O diretorio teste $DIR ja esta criado"
            else
                mkdir "$BASE_DIR/$DIR"
                touch "$BASE_DIR/$DIR"/texto1.txt \
                    "$BASE_DIR/$DIR"/texto2.txt \
                    "$BASE_DIR/$DIR"/imagem1.png \
                    "$BASE_DIR/$DIR"/pdf1.pdf
                echo "O diretorio teste $DIR foi criado com sucesso"
            fi
        done  
    ;;
    "2")
        for DIR in "${DIRS[@]}"; do 
            rm -r "$BASE_DIR/$DIR"
            echo "O diretorio teste $DIR apagado com sucesso"
        done
    ;;
    *)
        echo "Escolha uma opcao disponivel: 1 ou 2."
        exit 1
    ;;
esac