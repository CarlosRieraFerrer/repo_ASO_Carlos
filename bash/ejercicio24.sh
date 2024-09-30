#!/bin/bash

if [ $# -ne 1 ]; then
	echo "Necesitas poner un argumento"
	exit 1
fi 

directorio="$1"

if [ ! -d "$directorio" ]; then 
	echo "El $directorio no es valido"
	exit 1
fi

contador_ficheros=0
contador_directorios=0

for entrada in "$directorio"/*;do
	if [ -f "$entrada" ]; then
	contador_ficheros=$((contador_ficheros +1))
	elif [ -d "$entrada" ]; then
	contador_directorios=$((contador_directorios +1))
	fi
done

	echo "Numero de ficheros: $contador_ficheros"
	echo "Numero de directorios: $contador_directorios"
