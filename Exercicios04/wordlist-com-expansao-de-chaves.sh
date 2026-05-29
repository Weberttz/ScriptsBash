#!/usr/bin/env bash

[[ $# -ne 1 ]] && echo "Passe apenas um argumento!" && exit 1

printf '%s\n' "${1}"{1..100} > Arquivos/wordlist.txt