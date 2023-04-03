#!/bin/bash

if [ "$1" = "--logs" ] && [ "$2" = "-l" ]; then

for i in {1..100}
do
    touch log$i.txt
    echo "Nazwa Pliku: log$i.txt" >> log$i.txt
    echo "Nazwa Skryptu: $0" >> log$i.txt
    echo "Data: $(date)" >> log$i.txt
done

fi
