#!/bin/bash

suma=0

while true 
do 
read -p "Introduce un numero (0 para acabar): " numero

if [ "$numero" -eq 0 ]; then
	echo "la suma final es: $suma"
	break
fi

suma=$((suma + numero))

echo "Suma actual: $suma"
done
