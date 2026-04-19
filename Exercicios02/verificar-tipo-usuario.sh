#!/usr/bin/env bash


if [[ $(whoami) == "root" ]]; then
echo "ATENÇÃO: Você está executando este script como superusuário!"
else
echo "Executando como usuário comum. OK."
fi
