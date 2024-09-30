#!/bin/bash

if [ -z "$1" ]; then
  echo "Por favor, introduce el directorio como parámetro."
  exit 1
fi

directorio="$1"



if [ ! -d "$directorio" ]; then
  echo "El directorio $directorio no existe."
  exit 1
fi


fecha=$(date +%F)

nombre_directorio=$(basename "$directorio")

archivo_salida="${fecha}_${nombre_directorio}.tar.gz"

tar -czf "$archivo_salida" -C "$(dirname "$directorio")" "$nombre_directorio"

echo "Archivo comprimido creado: $archivo_salida"
