#!/bin/bash

# create the files

for subdir in config dca elements languages/de templates
do
    if [ ! -d $subdir ]
    then
      echo "erzeuge Verzeichnis $subdir"
      mkdir -p $subdir
    fi
done

xetex demo.ins

# create the documentation

#pdflatex demo.dtx
xelatex demo.dtx