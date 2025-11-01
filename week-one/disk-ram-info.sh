#! /bin/zsh

output="$HOME/SRE-DEVOPS/week-one/disk-ram-info.txt"

echo "Uptime:" > $output
uptime >> $output
echo >> $output

echo "Uso do disco:" >> $output
df -h >> $output
echo >> $output

echo "Uso da memoria ram" >> $output
free -h >> $output
echo >> $output

echo "5 processos que estão consumindo mais CPU:" >> $output
ps -eo pid,comm,%cpu,%mem --sort=-%cpu | head -n 6 >> $output

