#!/bin/bash

read -p "Pon el primer numero:" num1
read -p "Pon el segundo numero:" num2

media=$(echo "scale=2; ($num1 + $num2) / 2" | bc)

echo "La media aritmetica de $num1 y $num2 es: $media"
