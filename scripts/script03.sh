#terceiro script
#somando o numero informado com 100
clear
#le o numero informado pelo usuario
#echo "digite o numero: "
#read numero

#declara uma variavel com valor 100
valor=100

#realiza o calculo
resultado=`expr $1 + $valor`

#informa o resultado
echo "Resultado: $resultado"
exit  0
