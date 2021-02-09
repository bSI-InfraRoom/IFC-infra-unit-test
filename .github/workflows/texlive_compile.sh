#!/usr/bin/env sh

# This script is used for building LaTeX files using GitHub actions

# see also https://unix.stackexchange.com/questions/31414/how-can-i-pass-a-command-line-argument-into-a-shell-script
# and      https://unix.stackexchange.com/questions/32290/pass-command-line-arguments-to-bash-script

# check input
if [ $# -ne 1 ]; then
    echo $0: usage: texlive_compile filename
    exit 1
fi

# set variable
name=$1

pdflatex -shell-escape -synctex=1 -extra-mem-top=10000000 $name.tex
pdflatex -shell-escape -synctex=1 -extra-mem-top=10000000 $name.tex
