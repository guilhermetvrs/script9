#!/bin/bash




read -p "insira a senha, para que possamos realizar testes nela: " senha

#grep -E '[a-z]' <<< $senha &> /dev/null && grep -E '[A-Z]' <<< $senha &> /dev/null && grep -E '[0-9]' <<< $senha &> /dev/null && echo "ok senha dentro do padrão" || echo -e "senha fora do padrão"

echo $senha | grep -E '([a-z])([0-9])' | grep -E '([A-Z])' && echo "senha dentro do padrão" || echo -e "senha não se encontra no  padrão exigido"
