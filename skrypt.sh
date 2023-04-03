#!/bin/bash

<<<<<<< HEAD
if [[ "$1" == "--init" ]]; then
    git clone <D:\lab>
    echo 'export PATH=$PATH:'$(pwd) >> ~/.bashrc
=======
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

if [ "$1" = "--help" ]; then

echo "skrypt.sh --date - wyswietli dzisiejsza date"
echo "skrypt.sh --logs - utworzy 100 plikow logx.txt gdzie x to numer pliku"
echo "skrypt.sh --logs30 - utworzy 30 plikow jak wyzej(mozna podac zamiast 30 dowolna liczbe"
>>>>>>> parent of 0c9a46e (Update skrypt.sh)
fi
