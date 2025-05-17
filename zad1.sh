#!/bin/bash
echo "Funkcje w trakcie implementacji"
case "$1" in
    --date | -d)
        date +"%Y-%m-%d"
        ;;
    --logs | -l)
    count=${2:-100}
    for i in $(seq 1 $count); do
        echo "log$i.txt | skrypt.sh | $(date)" > log$i.txt
    done
    ;;

    *)
        echo "Nieznane polecenie uzyj --help."
        ;;
esac

