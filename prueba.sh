#!/bin/bash
echo "*************************"
echo "La tabla del" $n1" hasta el " $n2
sleep 2
#Seleccionamos los valores a seleccionar y comenzamos el bucle
for ((i=1; i<n2+1; i++))
do
	mult=$(($n1*$i))
    echo "$n1 x $i = $mult"
    
done
echo "Terminamos"
