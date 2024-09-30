#!/bin/bash

suma_until=0
i=1
until [ $i -gt 1000 ]
do
  suma_until=$((suma_until + i))
  i=$((i + 1))
done
echo "Suma con until: $suma_until"

