#!/usr/bin/env bash

[[ $# -ne 1 ]] && echo "Entre com um novo serviço!" && exit

declare -a servicos

servicos=("ssh" "nginx" "mysql" "forge" "aws")
servicos+=("$1")

echo ""

contador=1

for servico in "${servicos[@]}"; do
echo "Serviço $contador : $servico"
(( contador++ ))
done

echo "Quantidade de serviços: ${#servicos[@]}"
