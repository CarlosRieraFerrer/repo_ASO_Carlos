#!/bin/bash

read -p "Primer numero:" num1
read -p "Segundo numero:" num2

if [$num1 -gt $num2];
then 
echo "El numero $num1 es mayor que $num2"

