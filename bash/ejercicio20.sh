#!/bin/bash

if [ -z "$1" ]; then
  echo "Debes proporcionar un número como parámetro."
  exit 1
fi


numero=$1


if [ "$numero" -lt 2 ]; then
  echo "$numero no es un número primo."
  exit 0
fi


es_primo=1


for ((i=2; i*i<=numero; i++))
do
  if [ $((numero % i)) -eq 0 ]; then
    es_primo=0
    break
  fi
done

if [ "$es_primo" -eq 1 ]; then
  echo "$numero es un número primo."
else
  echo "$numero no es un número primo."
fi

