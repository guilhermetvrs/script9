#!/bin/bash

rm resultado.txt

read -p "qual diretorio você quer que nos verifiquemos? " dir

ls -F  ${dir}>> resultado.txt

echo "arquivos executavei: "
grep "*" resultado.txt || echo -e "não há\n.\n.\n.\n"

##resolver o problema de não conseguir mostrar apenas os não executaveis

echo "arquivos não executaveis: "
grep "" resultado.txt || echo -e "não há\n.\n.\n.\n"

echo  "verificando diretorios"
grep "/" resultado.txt  || echo "não há"
