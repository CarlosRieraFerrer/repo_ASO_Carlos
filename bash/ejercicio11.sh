#!/bin/bash
ls 
	if [ "$#" -ne 2 ]; then
	echo "Error : Debes proporcionar mas parametros"
	exit 1
fi
	if [ ! -f "$1" ]; then
	echo "Error : El archivo '$1' no existe o no es un archivo ordinario"
	exit 1
fi
	if [ -e "$2" ]; then
	echo "Error: Ya existe el archivo"
	exit 1
fi

cp "$1" "$2"

echo "Archivo '1' copiado exitosamente como '$2'."
