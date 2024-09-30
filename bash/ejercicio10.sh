#!/bin/bash

read -p "Pon un numero" numero
     if [ $((numero % 2)) -eq 0 ]; then
	echo "El numero es par"
else
	echo "El numero es impar"
fi
