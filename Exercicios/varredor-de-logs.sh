#!/usr/bin/env bash

[[ $# -ne 1 ]] && echo "Passe um diretório como argumento" && exit 1
[[ ! -d "$1" ]] && echo "Diretório não existe" && exit 1

dir=$1

echo "------------------ ARQUIVOS DE LOGS FICTÍCIOS ------------------"
echo ""

for f in "$dir"/*.log; do
    tamanho=$(wc -c < "$f")
    nome=$(basename "$f" < "$dir")
    echo "O tamanho do arquivo $nome é $tamanho"
    tail -3 "$f" 
   
    echo ""
    echo ""
done