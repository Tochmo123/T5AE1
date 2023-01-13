#!/bin/bash

read -p "Introdueix el nom del usuari: " usu
nomLog=`cat usuarios.txt | grep $usu | wc -l`
if [ $nomLog -eq 0 ];then
    echo "El nom d'usuari no s'ha loguejat."
    else
    echo "Logins de l'usuari  $usu"
    for i in `seq 1 $nomLog`
    do
    log=`cat usuarios.txt | grep $usu | awk '{print $2,$3}'| tail -n1`
    done
    echo "Per a $usu l'ultima conexió va ser = $log"
fi

