#!/bin/bash

#!/bin/bash

numero_a_adivinar=$(( RANDOM % 100 + 1 ))

echo "¡Bienvenido al juego de adivinar el número!"
echo "Intenta adivinar el número entre 1 y 100."
echo "Escribe 0 si te rindes."

while true
do
  read -p "Introduce un número: " numero_usuario

  if [ "$numero_usuario" -eq 0 ]; then
    echo "Te has rendido. El número era $numero_a_adivinar."
    break
  fi

  if [ "$numero_usuario" -eq "$numero_a_adivinar" ]; then
    echo "¡Enhorabuena! Has adivinado el número."
    break
  elif [ "$numero_usuario" -lt "$numero_a_adivinar" ]; then
    echo "El número es mayor."
  else
    echo "El número es menor."
  fi
done

