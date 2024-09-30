#!/bin/bash

fichero_salida="listado_etc.txt"

ls /etc > "$fichero_salida"

echo "Contenido del archivo"

cat "$fichero_salida"

num_lineas=$(wc -l < "$fichero_salida")
num_palabras=$(wc -w < "$fichero_salida")

echo "El numero de lineas es : $num_lineas"
echo "El numero de palabras es :$num_palabras"
