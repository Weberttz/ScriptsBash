#!/usr/bin/env bash

declare -a palavras=(senha pass key)
declare -a sufixos=(123 2024 ! @#)

caminho="./Arquivos/wordlist_com_separadores.txt"
caminho2="./Arquivos/wordlist_com_separadores_sem_duplicatas.txt"
>$caminho

for palavra in "${palavras[@]}"; do
    for sufixo in "${sufixos[@]}"; do
        echo "${palavra}${sufixo}" 
        echo "${palavra}_${sufixo}"
    done >> $caminho
done

sort -u $caminho > $caminho2

echo "Arquivo foi gerado com sucesso!"