#!/bin/bash

if [[ ! -d ~/Paperera ]]
then 
    mkdir ~/Paperera
    clear

while [[ "$1" != "" ]]; do
    case $1 in
        -e) if (( $# != 3 )); then
                echo "Parametros incorrectos"
                echo "Con esta opcion se requiere tres Parametros"
                echo "La primera opcion es -e"
                echo "La segunda opcion tienes que especificar la extension"
                echo "La tercera opcion tienes que especificar el directorio"
                exit 2
            fi
            if [[ ! -d ~/Paperera ]]
            then
                echo "La carpeta Paperera no existe"
            else
                mv $3/*.$2 ~/Paperera
            fi
           ;;
        -r) if (( $# != 1 )); then
                    echo "Parametros incorrectos"
                    echo "La opcion -r no hace falta parametros"
                    exit 1
                else
                    rm ~/Paperera/*
                    echo "Paperera vacia"
                fi
             ;;
    esac
exit 0

