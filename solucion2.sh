#!/bin/bash


read -p "Introdueix el nom del mes: " mes

if grep -q $mes usuarios.txt; then
    grep $mes usuarios.txt | awk '{print $2}'    #Imprime la columna que quieras / El print $2 te da la columna puesta
else
    echo "0"
fi
