#!/usr/bin/env bash


[[ $# -ne 1 ]] && echo "passe apenas um argumento" && exit 1

declare -i celsius=$1

declare -i fahrenheit=0
fahrenheit=$(($celsius*2+32))

declare -i kelvin=0
kelvin=$(($celsius+273))

echo "Celsius: $celsius"
echo "Fahrenheit: $fahrenheit"
echo "Kelvin: $kelvin"


