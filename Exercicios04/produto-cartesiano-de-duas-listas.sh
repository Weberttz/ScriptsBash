#!/usr/bin/env bash

[[ $# -ne 2 ]] && echo "Passe dois arquivos como argumentos" && exit 1

[[ ! -f $1 ]] && echo "O arquivo 1 não existe" && exit 1

[[ ! -f $2 ]] && echo "O arquivo 2 não existe" && exit 1


caminho="./Arquivos/combinado.txt"
total=0

#limpar arquivo
> $caminho

while read p1; do
    while read p2; do
        (( total++ ))
        echo "${p1}${p2}" >> $caminho
    done < "$2"
done < "$1"

echo "O arquivo foi gerado com sucesso!"
echo "O total de combinações foi = $total"