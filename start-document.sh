#!/usr/bin/env sh

DIR="$(pwd)"

printf "%s\n" "'${DIR}' is the current directory, making document setup here."

ln -s "$HOME/Git/latex-template/template-2.tex" ./template.tex

if [ "${1}" = "-l" ]; then
    exit 0
fi

cp "$HOME/Git/latex-template/document.tex" ./document.tex

if [ -n "${1}" ]; then
    mv ./document.tex "${1}".tex
    printf "Renamed document.tex to %s.tex" "${1}"
fi
