
#!/bin/bash

if [ $# -ne 1 ]; then
  echo "Debes pasar el directorio completo indicado con la ruta absoluta"
  exit 1
fi

directorio="$1"


if [ ! -d "$directorio" ]; then
  echo "Error: $directorio no es un directorio válido."
  exit 1
fi

contador=0

for entrada in "$directorio"/*; do
  if [ -d "$entrada" ]; then
    echo "$(basename "$entrada") es un directorio"
  elif [ -f "$entrada" ]; then
    echo "$(basename "$entrada") es un fichero"
  else
    echo "$(basename "$entrada") es otro tipo de entrada"
  fi

  contador=$((contador + 1))
done

echo "Número total de entradas procesadas: $contador"
