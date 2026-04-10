#!/usr/bin/env bash

declare -a servicos

servicos=("ssh", "nginx", "mysql", "forge", "aws")

for (( n = 0; n < 5; n++ )); do
echo "Ìndice: $n - Serviço: ${servicos[n]}"
done

echo ""

for servico in "${servicos[@]}"; do
echo "Serviço: $servico"
done

echo "Quantidade de serviços: ${#servicos[@]}"
