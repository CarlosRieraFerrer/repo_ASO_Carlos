#!/bin/bash
#!/bin/bash

peligrosos="archivos_peligrosos.txt"

find . -type f exec ls -l {"archivos_peligrosos.txt"} \;

echo "Se ha guardado la lista de archivos peligrosos en $peligrosos."

