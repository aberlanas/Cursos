#!/bin/bash

MARKDOWN_FILE="$1"
OUTPUT_FOLDER="PDFS/"
BASENAME=$(echo $(basename $MARKDOWN_FILE)|cut -d "." -f1)
#BEAMER_THEME="theme:Warsaw"
BEAMER_THEME="theme:Hannover"


echo " * Compilando como BASENAME : ${BASENAME} "

mkdir -p ${OUTPUT_FOLDER}

# FORMAT = s5  slidy slideous dzslides revealjs  
pandoc -t s5 -s ${MARKDOWN_FILE} -o ${OUTPUT_FOLDER}/${BASENAME}.html


# BEAMER
pandoc -t beamer ${MARKDOWN_FILE} -V ${BEAMER_THEME} -o ${OUTPUT_FOLDER}/${BASENAME}.pdf
atril ${OUTPUT_FOLDER}/${BASENAME}.pdf




