#!/bin/bash

fichero="lista.txt"

read -p "Pon una palabra" palabra

echo "$palabra" >> "lista.txt"

echo "La palabra $palabra se ha añadido al archivo $fichero."
