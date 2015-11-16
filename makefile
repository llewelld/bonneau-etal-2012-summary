all: main.pdf

main.aux: main.tex main.bib
#main.aux: main.tex
	pdflatex main.tex

main.bbl: main.aux
	bibtex main.aux

main.pdf: main.tex main.bbl
#main.pdf: main.tex
	pdflatex main.tex
	pdflatex main.tex

clean:
	rm *.blg *.log *.pdf *.bbl *.aux *.out *.wiki *.snm *.nav *.toc

