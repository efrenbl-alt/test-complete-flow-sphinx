#!/usr/bin/env bash

#

echo "Activando entorno virtual"
source ../venv/bin/activate

echo "hola"
#../venv/bin/pip install Sphinx==4.0.2
#../venv/bin/pip install sphinx-rtd-theme==0.5.2

rm -Rf ./source/app.rst

old=": app"
new='aa'

sphinx-apidoc -o ./source ../scripts
sed -i 's/old/new/g' ./source/app.rst 

echo "Back to bash"