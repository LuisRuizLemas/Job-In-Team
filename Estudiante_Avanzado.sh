#!/bin/bash
echo "***********************************************************************************************"
echo "Bienvenido al curso de $materia"
if [ "$Estudiante_Avanzado" = "true" ] 
then 

# VariableS:
RES=0
# Bucle:
for VAR in $(seq 1 100)
do
echo "Sumando $RES + $VAR."
# Sumar VAR a lo anterior:
RES=$(expr $RES + $VAR)
done
# Resultado:
echo " El resultado es $RES."
echo "Acabas de obtener una suma secuencial del 1 al 100, buena suerte estudiante"

else

    echo "Usa una herramienta estudiante $nombre, del curso $materia en $idioma, no repruebes."
    echo " "
    echo "Bienvenido $nombre, del curso $materia, ingresastes los numeros $n1 y $n2, los resultados son: "
    echo "***********************************************************************************************"
    
echo "La suma de los numeros $n1 y $n2 es: "

echo "$n1 + $n2 = $(($n1+$n2))"

echo "La resta de los numeros $n1 y $n2 es: "

echo "$n1 - $n2 = $(($n1-$n2))"

echo "La multiplicacion de los numeros $n1 y $n2 es: "

echo "$n1 * $n2 = $(($n1*$n2))" 

echo "La division de los numeros $n1 y $n2 es: "

echo "$n1 / $n2 = $(($n1/$n2))" 

fi
echo "..."
sleep 3
echo "Que tengas buen semestre $nombre!, exito."
