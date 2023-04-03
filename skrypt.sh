#!/bin/bash

if [ "$1" = "--error" ] && [ "$2" = "-e" ] && [ "$3" -gt 0 ] 2>/dev/null;then

for ((i=1; i<=$3; i++))


do
    mkdir error$i
    touch error$i/error$i.txt
    echo "Nazwa Pliku: error$i.txt" >> error$i/error$i.txt
    echo "Nazwa Skryptu: $0" >> error$i/error$i.txt
    echo "Data: $(date)" >> error$i/error$i.txt
done

fi
