#!/bin/bash
# | para redirecionar saida de um comando para outro
# cut -d (comando de direcionamento) -f field (comando de escolha de qual campo utilizar
recebido=0
nRecebido=0
while read linha
do
	ip=`echo $linha | cut -d : -f 1 `
	nome=`echo $linha | cut -d : -f 2`
	echo "O endereco IPe eh $ip e a maquina: $nome" >> pingRes1.txt
	res2=`ping -c 1 $ip | grep "64 bytes from" | cut -d " " -f 1`
	
	if [ 64 -eq $res2 ]; then
		echo "Recebido"
		let recebido++
	else
		echo "Falha"
		nRecebido=`expr $nRecebido + 1`
	fi

done < ips.txt

echo "Ips com Sucesso: $recebido / Ips nao retornados: $nRecebido"
