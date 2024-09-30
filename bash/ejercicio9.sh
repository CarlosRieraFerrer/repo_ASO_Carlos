#!/bin/bash

echo "*****OPERACIONES*BASICAS*******
      *****1.SUMAR=******************
      *****2.RESTAR******************
      *****3.MULTIPLICAR*************
      *****4.DIVIDIR*****************"

	read -p "Primer numero:" num1
	read -p "Segundo numero" num2
	read -p "Que quieres hacer" opcion

case $opcion in
	1)
         echo "El resultado es $(($num1 + $num2 |bc))"
	;;
        2)
	echo "El resultado es $(( $num1 - $num2 |bc))"
        ;;
	3)
	echo "El resultado es $(($num1 * $num2 |bc))"
	;;
	4)
	echo "El resultado es $(( num1 / num2 |bc))"
	;;
	esac

