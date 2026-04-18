#!/usr/bin/env bash

declare -a meses
declare -i maior=0

meses=("Janeiro" "Fevereiro" "Março" "Abril" "Maio" "Junho" "Julho" "Agosto"
"Setembro" "Outubro" "Novembro" "Dezembro")

echo -n "Primeiro Trimestre: "
echo "${meses[@]:0:3}"
echo -n "Segundo Semestre: "
echo "${meses[@]:6:6}"
echo -n "Último Trimestre: "
echo "${meses[@]:9:3}"

echo "Número total de elementos ${#meses[@]}"

for mes in "${meses[@]}"; do
if (( maior < ${#mes} )); then
maior=${#mes}
maior_comprimento="$mes"
fi
done

echo "Mês com nome de maior comprimento: $maior_comprimento"
