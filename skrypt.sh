#!/bin/bash

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
