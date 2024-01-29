#!/usr/bin/env sh

DIR="$(pwd)"

printf "%s\n" "'${DIR}' is the current directory, making document setup here."

ln -s "$HOME/Git/latex-template/template.tex" ./template.tex
cp "$HOME/Git/latex-template/document.tex" ./document.tex
