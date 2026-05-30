#!/usr/bin/env bash

[[ $# -ne 1 ]] && echo "Passe um arquivo como argumento" && exit 1

[[ !  -f $1 ]] && echo "O arquivo não existe" && exit 1

caminho="./Arquivos/leet.text"

#limpar arquivo
>$caminho

while read palavra; do
    echo $palavra >> $caminho

    leet=${palavra//a/@};
    echo $leet >> $caminho

    leet=${palavra//e/3};
    echo $leet >> $caminho;

    leet=${palavra//i/1};
    echo $leet >> $caminho;

    leet=${palavra//o/0};
    echo $leet >> $caminho;

    leet=${palavra//s/$};
    echo $leet >> $caminho;

done < "$1"

echo "O arquivo leet.txt foi gerado com sucesso!"