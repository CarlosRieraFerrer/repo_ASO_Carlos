#!/bin/bash

fichero_salida="listado_etc.txt"

ls /etc > "$fichero_salida"

cat "$fichero_salida"
