#!/usr/bin/env bash

declare -a lista=(echo cd ls test read type mkdir "alias l")

for comando in "${lista[@]}"; do
    printf '%-10s ' "$comando"
    type -t $comando
done