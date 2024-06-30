#!/usr/bin/env sh

DIR="$(pwd)"

printf "%s\n" "'${DIR}' is the current directory, making document setup here."

ln -s "$HOME/Git/latex-template/template.tex" ./template.tex
ln -s "$HOME/Git/latex-template/theoremboxes.tex" ./theoremboxes.tex
ln -s "$HOME/Git/latex-template/letterfonts.tex" ./letterfonts.tex

if [ "${1}" = "-l" ]; then
    exit 0
fi

cp "$HOME/Git/latex-template/document.tex" ./document.tex

if [ -n "${1}" ]; then
    mv ./document.tex "${1}".tex
    printf "Renamed document.tex to %s.tex" "${1}"
    sed -i "s/document\\.tex/${1}.tex" ./"${1}".tex
fi
