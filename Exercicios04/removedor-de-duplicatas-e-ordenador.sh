#!/usr/bin/env bash

[[ $# -ne 1 ]] && echo "Passe um argumento!" && exit 1
[[ ! -f $1 ]] && echo "O arquivo não existe!" && exit 1

arquivo=$1
caminho="./Arquivos/wordlist_limpa.txt"
> $caminho
antes=$( wc -l < $arquivo )

grep -v '^$' "$arquivo" | sort -u  > "$arquivo.tmp" && mv "$arquivo.tmp" "$arquivo"

while read linha; do
    if [[ ${#linha} -gt 4 ]]; then 
        echo $linha >> $caminho
    fi
done < $arquivo 

depois=$( wc -l < $caminho )

diferenca=$(( antes - depois ))

echo "A quantidade de linhas removidas foi $diferenca"