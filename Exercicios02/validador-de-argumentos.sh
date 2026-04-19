#!/usr/bin/env bash

if [[ $# -ne 1 ]]; then
echo "Digite apenas um arquivo no argumento!"
exit 1
fi

if [[ -f $1 ]]; then 
echo "O arquivo já existe!"
else
echo "O arquivo não existe!"
fi

if [[ -x $1 ]]; then
echo "O arquivo é exeutável"
fi

