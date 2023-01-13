#!/bin/bash

read -p "Dame una opcion: " opcion
while [ $opcion -ne 5 ]
do
case $opcion in
    1)
        source solucion1.sh ;;
    2)
        source solucion2.sh ;;
    3)
        source solucion3.sh ;;
    *)
        echo "Opción no definida." ;;
esac
read -p "Introdueix altra opció: " opcion
done
echo "Fin del programa"
