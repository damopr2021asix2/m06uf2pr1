#!/bin/bash

echo -n "Que carpeta quieres compromir? (Especifica el direrctorio): "
read dir
echo -n "Nombre del archivo compromido: "
read arc

if [[ -x != "" && -s != 0 ]]; then

        tar -zcvf "$arc".gz  "$dir"
fi
exit 1

