#!/bin/bash

# A simple script to make PDFs from the Pandoc documentation 
# of each Unit.

clean-environment(){

    echo " * Cleaning Environment "
    mkdir -p PDFS
    rm -f PDFS/*

}

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

makeUD02(){

    echo " Making : UD00 "
    cd UD02-Guiones
    UnitPrefix="UD02"
    for f in $(find . -name  "*.md"); do
        
        DESTPDF=$(basename $f| cut -d "." -f1).pdf
        echo " ** Procesando : ${f} -> ${UnitPrefix}-${DESTPDF}"

	    pandoc ${f} -o ../PDFS/${UnitPrefix}-${DESTPDF} --from markdown --template ../rsrc/templates/eisvogel.tex --listings
    done
    cd ..
}

makeUD03(){

    echo " Making : UD03 "
    cd UD03-OBS-01
    UnitPrefix="UD03"
    for f in $(find . -name  "*.md"); do
        
        DESTPDF=$(basename $f| cut -d "." -f1).pdf
        echo " ** Procesando : ${f} -> ${UnitPrefix}-${DESTPDF}"

	    pandoc ${f} -o ../PDFS/${UnitPrefix}-${DESTPDF} --from markdown --template ../rsrc/templates/eisvogel.tex --listings
    done
    cd ..
}

makeUD04(){

    echo " Making : UD04 "
    cd UD04-OBS-02
    UnitPrefix="UD04"
    for f in $(find . -name  "*.md"); do
        
        DESTPDF=$(basename $f| cut -d "." -f1).pdf
        echo " ** Procesando : ${f} -> ${UnitPrefix}-${DESTPDF}"

	    pandoc ${f} -o ../PDFS/${UnitPrefix}-${DESTPDF} --from markdown --template ../rsrc/templates/eisvogel.tex --listings
    done
    cd ..
}

makeUD05(){

    echo " Making : UD05 "
    cd UD05-Subtitulos
    UnitPrefix="UD05"
    for f in $(find . -name  "*.md"); do
        
        DESTPDF=$(basename $f| cut -d "." -f1).pdf
        echo " ** Procesando : ${f} -> ${UnitPrefix}-${DESTPDF}"

	    pandoc ${f} -o ../PDFS/${UnitPrefix}-${DESTPDF} --from markdown --template ../rsrc/templates/eisvogel.tex --listings
    done
    cd ..
}

makeUD06(){

    echo " Making : UD06 - Plataformas "
    cd UD06-Plataformas
    UnitPrefix="UD05"
    for f in $(find . -name  "*.md"); do
        
        DESTPDF=$(basename $f| cut -d "." -f1).pdf
        echo " ** Procesando : ${f} -> ${UnitPrefix}-${DESTPDF}"

	    pandoc ${f} -o ../PDFS/${UnitPrefix}-${DESTPDF} --from markdown --template ../rsrc/templates/eisvogel.tex --listings
    done
    cd ..
}

makeUD07(){

    echo " Making : UD07 - Kanban "
    cd UD07-Kanban
    UnitPrefix="UD07"
    for f in $(find . -name  "*.md"); do
        
        DESTPDF=$(basename $f| cut -d "." -f1).pdf
        echo " ** Procesando : ${f} -> ${UnitPrefix}-${DESTPDF}"

	    pandoc ${f} -o ../PDFS/${UnitPrefix}-${DESTPDF} --from markdown --template ../rsrc/templates/eisvogel.tex --listings
    done
    cd ..
}



clean-environment

#makeUD00
#makeUD01
#makeUD02
#makeUD03
#makeUD04
#makeUD05
#makeUD06
makeUD07

exit 0