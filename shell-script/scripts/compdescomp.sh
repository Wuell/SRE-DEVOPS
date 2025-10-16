#! /bin/bash

read -p "Voce deseja compactar ou descompactar?" comando
case $comando in
	"compactar")
		read -p "Escolha o Nome do diretorio compactado: " data_compact
		read -p "Escolha os arquivos que vao ser comptados: " files
		tar -czf "$data_compact" $files --remove-files
		echo "Compactado com sucesso"
	;;
	"descompactar")
		read -p "Escolha o arquivo que vai ser descompactado: " file
		read -p "Diretorio de destinho: " dir
		tar -xzf "$file" -C "$dir"
		echo "Descompactado com sucesso"
	;;
	*)
		echo "Operacao invalida"
		exit 1
	;;
esac 
	  

