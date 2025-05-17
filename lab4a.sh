#!/bin/bash

# Obsługa flag
case "$1" in
    --date | -d)
        date +"%Y-%m-%d"
        ;;
    --logs | -l)
        count=${2:-100}  # Domyślnie 100 plików
        for i in $(seq 1 $count); do
            echo "log$i.txt | skrypt.sh | $(date)" > log$i.txt
        done
        ;;
    --help | -h)
        echo "Dostępne opcje:"
        echo "--date (-d) - Dzisiejsza datę"
        echo "--logs (-l) [liczba] - tworzy pliki log"
        ;;
    *)
        echo "Nieznana opcja. Użyj --help."
        exit 1
        ;;
esac

