#!/usr/bin/env bash

declare -a array
array=(admin user root guest test)

for prefixo in "${array[@]}"; do
    printf '%s\n' "${prefixo}"{1..50}
done > Arquivos/wordlist1.txt

echo "A wordlist foi gerada com sucesso!"