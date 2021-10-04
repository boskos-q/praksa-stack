#!/bin/bash

# proveravamo da li je ime projekta za konfiguraciju setovano 
if [ -z ${1+x} ]; then 
    echo "Potrebno je definisati koji projekat se konfigurise"
    exit 1; else
    echo "Kofiguracija: '$1'"
    ZADATAK=$1; fi

# clear old dir
rm -rf zadatak
# create new dir
mkdir zadatak
# copy config
cp -R ../config/projects-default/. zadatak
# copy project to zadatak folder
cp -R $ZADATAK/. zadatak
echo "Projekat je spreman"
