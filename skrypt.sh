#!/bin/bash

if [ "$1" = "--date" ]; then
  date +%Y-%m-%d
fi

if [ "$1" = "--logs" ]; then

for i in {1..100}
do
    touch log$i.txt
    echo "Nazwa Pliku: log$i.txt" >> log$i.txt
    echo "Nazwa Skryptu: $0" >> log$i.txt
    echo "Data: $(date)" >> log$i.txt
done

fi

if [ "$1" = "--logs" ] && [ "$2" -gt 0 ] 2>/dev/null; then
    for ((i=1; i<=$2; i++))
    do
        touch log$i.txt
        echo "Nazwa pliku: log$i.txt" >> log$i.txt
        echo "Nazwa skryptu: $0" >> log$i.txt
        echo "Data utworzenia: $(date)" >> log$i.txt
    done

fi
