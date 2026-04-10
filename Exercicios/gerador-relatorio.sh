#!/usr/bin/env bash

data=$(date)
usuario=$(echo $USER)
hostname=$(hostname)
pid=$(echo $$)

echo $data > relatorio_$(date +%F).txt
echo $usuario >> relatorio_$(date +%F).txt
echo $hostname >> relatorio_$(date +%F).txt
echo $pid >> relatorio_$(date +%F).txt
