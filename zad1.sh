#!/bin/bash
echo "Funkcje w trakcie implementacji"
case "$1" in
    --date | -d)
        date +"%Y-%m-%d"
        ;;
    *)
        echo "Nieznane polecenie uzyj --help."
        ;;
esac

