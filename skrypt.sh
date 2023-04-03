#!/bin/bash

if [ "$1" = "--logs" ]; then

for i in {1..100}
do
    mkdir log$i
    touch log$i/log$i.txt
    echo "Nazwa Pliku: log$i.txt" >> log$i/log$i.txt
    echo "Nazwa Skryptu: $0" >> log$i/log$i.txt
    echo "Data: $(date)" >> log$i/log$i.txt
done

fi
