#!/bin/bash
set -ex

name='goal'
if [ -d .tmp ]
then
    rm -rf .tmp
fi
mkdir .tmp
cd .tmp
cp ../$name.tex  ./
/Library/TeX/texbin/xelatex $name.tex  #> /dev/null
cp $name.pdf ../
cd ../
rm -rf .tmp
echo 'generate finished!'
open $name.pdf
