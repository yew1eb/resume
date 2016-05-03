#!/usr/bin/env bash

name=resume
mkdir .tmp
cd .tmp
cp ../resume.tex  ./
/Library/TeX/texbin/xelatex ${name}.tex > null
cp ${name}.pdf ../
cd ../
rm -rf .tmp
echo 'generate finished!'
open ${name}.pdf
