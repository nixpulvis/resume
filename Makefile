all: professional.pdf teaching.pdf

%.pdf: %.tex
	pdflatex $<
