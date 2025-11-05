#! /bin/zsh

HOSTS=("8.8.8.8" "github.com" "google.com")
LOG="$HOME/SRE-DEVOPS/week-one/netcheck.log"
DATE_NOW=$(date +"%Y-%m-%d %H:%M:%S")

for host in "${HOSTS[@]}"; do
    if ping -c 4 -W 2 "$host" > /dev/null 2>&1; then
        echo "Conectado as $DATE_NOW ao IP:$host" >> $LOG
    else
        echo "Nao foi possivel estabelecer conexao as $DATE_NOW com o IP:$host" >> $LOG
    fi
done
echo >> $LOG
