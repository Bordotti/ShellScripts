#!/bin/bash
# | para redirecionar saida de um comando para outro
# cut -d (comando de direcionamento) -f field (comando de escolha de qual campo utilizar

while read linha
do
	ip=`echo $linha | cut -d : -f 1 `
	nome=`echo $linha | cut -d : -f 2`
	echo "O endereco IPe eh $ip e a maquina: $nome" >> pingRes1.txt
	ping -c 2 $ip | grep "64 bytes from"
#	ttl`echo $ttl | cut -d = -f 2`
#	echo " ttl: $ttl - recebido" >> pingRes1.txt

done < ips.txt
