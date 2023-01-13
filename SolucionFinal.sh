#!/bin/bash

echo "--OPCIONS DISPONIBLES--"
echo "Operació 1: Consulta les vegades que has ficat un nom"
echo "Operació 2: Consulta les connexions per mes"
echo "Operació 3: Consulta les connexions per data"
echo "Operació 4: Consulta última connexió"
echo "Operació 5: Eixir del programa"
echo "----------------------------------------------"
read -p "Escriu una opció: " opcion
while [ $opcion -ne 5 ]
do
case $opcion in
    1)
        source solucion1.sh ;;
    2)
        source solucion2.sh ;;
    3)
        source solucion3.sh ;;
    4)
        source solucion4.sh ;;
    *)
        echo "Opció no definida." ;;
esac
read -p "Introdueix altra opció: " opcion
done
echo "Fin del programa"
