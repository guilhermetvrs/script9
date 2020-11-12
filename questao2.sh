#!/bin/bash
read -p "digite o nome do arquivo" arq

read -p "digite 1 para remover a linha ou digite 2 para contar a quantidade.? >" cont


((cont == 1)) && grep -v -E '^$' $arq > tmp && mv tmp $arq
((cont == 2)) && grep -E '^$' $arq | wc -l
