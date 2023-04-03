#!/bin/bash

if [[ "$1" == "--init" ]]; then
    git clone https://github.com/0lch4/lab.git
    echo 'export PATH=$PATH:'$(pwd) >> ~/.bashrc
fi

if [ "$1" = "--date" ] && [ "$2" = "-d" ]; then
    date +%Y-%m-%d
fi

if [ "$1" = "--logs -l" ] && [ "$2" = "-l" ]; then

for ((i=1; i<=100; i++))

do
    mkdir logs$i
    touch logs$i.txt
    echo "Nazwa Pliku: logs$i.txt" >> logs$i.txt
    echo "Nazwa Skryptu: $0" >> logs$i.txt
    echo "Data: $(date)" >> logs$i.txt
done
fi

if [ "$1" = "--error" ] && [ "$2" = "" ]; then

for ((i=1; i<=100; i++))

do
    mkdir error$i
    touch error$i/error$i.txt
    echo "Nazwa Pliku: error$i.txt" >> error$i/error$i.txt
    echo "Nazwa Skryptu: $0" >> error$i/error$i.txt
    echo "Data: $(date)" >> error$i/error$i.txt
done
fi

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

if [ "$1" = "--logs" ] && [ "$2" = "" ]; then
for ((i=1; i<=100; i++))

do
    mkdir logs$i
    touch logs$i/logs$i.txt
    echo "Nazwa Pliku: logs$i.txt" >> logs$i/logs$i.txt
    echo "Nazwa Skryptu: $0" >> logs$i/logs$i.txt
    echo "Data: $(date)" >> logs$i/logs$i.txt
done

fi

if [ "$1" = "--logs" ] && [ "$2" -gt 0 ] 2>/dev/null; then
    for ((i=1; i<=$2; i++))
    do
    mkdir logs$i
    touch logs$i/logs$i.txt
    echo "Nazwa Pliku: logs$i.txt" >> logs$i/logs$i.txt
    echo "Nazwa Skryptu: $0" >> logs$i/logs$i.txt
    echo "Data: $(date)" >> logs$i/logs$i.txt
    done
fi


if [ "$1" = "--logs" ] && [ "$2" = "-l" ] && [ "$3" -gt 0 ] 2>/dev/null; then
    for ((i=1; i<=$3; i++))
    do
        touch log$i.txt
        echo "Nazwa pliku: log$i.txt" >> log$i.txt
        echo "Nazwa skryptu: $0" >> log$i.txt
        echo "Data utworzenia: $(date)" >> log$i.txt
    done
fi


if [ "$1" = "--help" ] && [ "$2" = "-h" ]; then

echo "skrypt.sh --date -d - wyswietli dzisiejsza date"
echo "skrypt.sh --logs -l - utworzy 100 plikow logx.txt gdzie x to numer pliku"
echo "skrypt.sh --logs30 -l - utworzy 30 plikow jak wyzej(mozna podac zamiast 30 dowolna liczbe"
echo "skrypt.sh --help -h  - pokazuje wszystkie mozliwe opcje"
echo "skrypt.sh --init klonuje cale repozytorium do katalogu w ktorym zostal uruchomiony"
echo "skrypt.sh --logs utworzy automatycznie 100 plików logx/logx.txt, x  to numer pliku od 0 do 100"
echo "skrypt.sh --logs30 - tak jak wyzej ale tworzy liczbe podana w argumencie"
echo "skrypt.sh --error - tworzy 100 plikow error/error.txt"
echo "skrypt.sh --error -e - tworzy liczbe plikow error/error.txt podana w argumencie"

fi
