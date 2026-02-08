SHELL := /bin/bash
.SHELLFLAGS := -O extglob -c
file := doc08
compile-once:
	
	pdflatex ${file}.tex && evince ${file}.pdf
compile-twice:
	pdflatex ${file}.tex && pdflatex ${file}.tex && evince ${file}.pdf

build:
	pdflatex ${file}.tex

	bibtex ${file}

	pdflatex ${file}.tex && pdflatex ${file}.tex && evince ${file}.pdf

del:
	rm ${file}!(*.tex) # && rm texput.log

