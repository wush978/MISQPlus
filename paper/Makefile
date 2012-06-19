RNWFILE := $(wildcard *.Rnw)

TEXFILE := $(RNWFILE:.Rnw=.tex)

PDFFILE := $(RNWFILE:.Rnw=.pdf)

all : $(PDFFILE)

$(PDFFILE) : $(RNWFILE)
	Rscript -e "Sweave('$(@:.pdf=.Rnw)')"
	pdflatex $(@:.pdf=.tex)
	pdflatex $(@:.pdf=.tex)

clean :
	-rm *.tex
	
	
