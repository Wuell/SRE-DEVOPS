#! /bin/zsh

dir_in="$HOME/SRE-DEVOPS/shell-script/scripts/backup_teste/"
backup_dir="$HOME/SRE-DEVOPS/week-one/backupdir"

echo "Iniciando backup..."
cd "$dir_in" || exit
tar -czf "$backup_dir/backup_$(date +'%Y%m%d_%H%M%S').tar.gz" ./*
echo "Backup concluido com sucesso!"
