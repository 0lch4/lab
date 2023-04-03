#!/bin/bash

if [ "$1" = "--logs" ] && [ "$2" = "-l" ] && [ "$3" -gt 0 ] 2>/dev/null; then
    for ((i=1; i<=$3; i++))
    do
        touch log$i.txt
        echo "Nazwa pliku: log$i.txt" >> log$i.txt
        echo "Nazwa skryptu: $0" >> log$i.txt
        echo "Data utworzenia: $(date)" >> log$i.txt
    done
fi
