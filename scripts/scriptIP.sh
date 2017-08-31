#!/bin/bash

while read linha
do
	echo "O endereço IPeh $linha"
	sleep 1
done < ips.txt
