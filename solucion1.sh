#!/bin/bash

read -p "Introdueix un nom d'usuari: " nom

cont=`cat usuarios.txt | grep $nom | wc -l`

if [ $cont -eq 0 ]
    then
        echo "El nom d'usuari $nom no existeix."
    else
        echo "L'usuari $nom s'ha loguejat $cont vegades."
fi
