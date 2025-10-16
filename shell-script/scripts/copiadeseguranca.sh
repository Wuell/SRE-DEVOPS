#!/bin/bash

read -p "Insira os diretorios que terao copia de seguranca: " -a mydirs

securitydir="$HOME/SRE-DEVOPS/shell-script/scripts/securitydir"
for mydir in "${mydirs[@]}"; do
    if [ ! -e "$mydir" ]; then
        echo "O diretorio $mydir nao existe"
        continue
    fi

    backupfile="$securitydir/$(basename "$mydir")_$(date +%Y%m%d_%H%M%S).tar.gz"

    tar -czf "$backupfile" "$mydir"
    echo "Diretorio $mydir copiado com sucesso para '$backupfile'!"
done 