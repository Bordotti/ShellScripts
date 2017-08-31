#Script 4
#media de numeros por paramentro
clear
echo "media de valores"
soma=`expr $1 + $2 + $3 + $4`
resultado=`expr $soma / 4`
echo "Resultado: $resultado"
exit 0
