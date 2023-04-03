#!/bin/bash

if [ "$1" = "--logs" ] && [ "$2" -gt 0 ] 2>/dev/null;then

for ((i=1; i<=$2; i++))

do
    mkdir log$i
    touch log$i/log$i.txt
    echo "Nazwa Pliku: log$i.txt" >> log$i/log$i.txt
    echo "Nazwa Skryptu: $0" >> log$i/log$i.txt
    echo "Data: $(date)" >> log$i/log$i.txt
done

fi
