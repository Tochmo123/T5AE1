#!/bin/bash

read -p "Introdueix el dia: " dia
read -p "Introdueix el mes: " mes

if ( grep -w $dia usuarios.txt | grep $mes ) ; then
    cat usuarios.txt | grep -w $dia | grep $mes | awk '{print $1}'
else
    echo "0"
fi