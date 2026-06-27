#!/usr/bin/env bash

[[ $# -ne 1 ]] && echo "Passe apenas uma string!" && exit 1

palavra=$1
invertida=$( rev <<< "$palavra" )

echo "Palavra: $palavra"
echo "Palavra invertida: $invertida"

[[ "$palavra" == "$invertida" ]] && echo "Palavra é palíndromo" && exit 1

echo "Palavra não é palíndromo"