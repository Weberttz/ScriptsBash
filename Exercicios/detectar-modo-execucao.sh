#!/usr/bin/env bash

[[ $- == *i* ]] && echo "Shell em modo interativo" && exit 1

echo "Shell em modo não-interativo"
echo -n "PID: "
echo $$

echo -n "Usuário: "
echo $USER

echo -n "Diretório Home: "
echo $HOME

