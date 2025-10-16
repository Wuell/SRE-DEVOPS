#! /bin/bash

date=$(date "+%Y-%m-%d %H:%M:%S")

if systemctl is-active --quiet nginx; then
	echo "$date - O nginx esta operando."

else
	echo "$date - O nginx nao esta em operacao!"

fi
