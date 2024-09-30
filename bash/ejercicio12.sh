#!/bin/bash

hora_actual=$(date +"%H")

if        [ "$hora_actual" -ge 8 ] && [ "$hora_actual" -lt 15 ]; then
	echo "Buenos dias dormilon " 

elif      [ "$hora_actual" -ge 15 ] && [ "$hora_actual" -lt 20 ]; then
	echo "Buenas tardes"
else
	echo "Buenas noches"
fi
