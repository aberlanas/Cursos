#!/bin/bash

mkdir -p PDFS

makeUD00(){

    echo " Making : UD00 "
    UnitPrefix="UD00"
    cd UD00-Introduccion
    for f in $(find . -name  "*.md"); do
        
        DESTPDF=$(basename $f| cut -d "." -f1).pdf
        echo " ** Procesando : ${f} -> ${UnitPrefix}-${DESTPDF}"
        
	    pandoc ${f} -o ../PDFS/${UnitPrefix}-${DESTPDF} --from markdown --template ../rsrc/templates/eisvogel.tex --listings
    done
    cd ..
}

makeUD01(){

    echo " Making : UD00 "
    cd UD01-ABS
    UnitPrefix="UD01"
    for f in $(find . -name  "*.md"); do
        
        DESTPDF=$(basename $f| cut -d "." -f1).pdf
        echo " ** Procesando : ${f} -> ${UnitPrefix}-${DESTPDF}"

	    pandoc ${f} -o ../PDFS/${UnitPrefix}-${DESTPDF} --from markdown --template ../rsrc/templates/eisvogel.tex --listings
    done
    cd ..
}

makeUD00
makeUD01

exit 0