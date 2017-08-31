#!/bin/bash
# | para redirecionar saida de um comando para outro
# cut -d (comando de direcionamento) -f field (comando de escolha de qual campo utilizar

while read linha
do
	ip=`echo $linha | cut -d : -f 1 `
	nome=`echo $linha | cut -d : -f 2`
	echo "O endereco IPe eh $ip e a maquina: $nome" >> pingRes1.txt
	res=`ping -c 1 $ip`
	res2=`echo $res | cut -d " " -f 1`
	if [ "64" = res2 ]; then
		echo "Recebido"
	else
		echo "Falha"
	fi

done < ips.txt
