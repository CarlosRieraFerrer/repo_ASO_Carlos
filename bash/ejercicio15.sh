#!/bin/bash

if [ -z "$1" ]; then
  echo "Por favor, proporcione un número como argumento."
  exit 1
fi


n=$1

for i in {1..10}; do
  resultado=$((i * n))
  echo "$i x $n = $resultado"
done



