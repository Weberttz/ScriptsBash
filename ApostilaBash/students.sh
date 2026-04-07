#!/usr/bin/env bash


echo "Nomes em cada linha: "
alunos=(Jõao Maria "Luís Carlos")
for aluno in "${alunos[@]}"; do
   echo $aluno
done
echo ""

# IFS=$'\n' # pular linha para quando usar *

echo "Noes separados por espaço: "
for aluno in "${alunos[*]}"; do
    echo $aluno
done
