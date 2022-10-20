HEADERS=$(wildcard head/*.tex)
INCLUDES=$(wildcard education/*.tex experience/*.tex skills/*.tex)

.PHONY: $(HEADERS) $(INCLUDES)

all: professional.pdf teaching.pdf
covers: covers/base.pdf covers/fdev.pdf covers/ibm.pdf

%.pdf: %.tex $(INCLUDES) $(HEADERS)
	pdflatex $<
