#!/usr/bin/env bash

[[ $# -ne 1 ]] && echo "Passe um arquivo como argumento!" && exit 1

[[ ! -f $1 ]] && echo "O arquivo não existe" && exit 1

caminho="./Arquivos/variacoes.txt"

while read palavra; do
    echo ${palavra} >> $caminho
    echo ${palavra^^} >> $caminho
    echo ${palavra,,} >> $caminho
    echo ${palavra^} >> $caminho
done < "$1"