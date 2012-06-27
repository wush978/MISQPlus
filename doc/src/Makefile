all : model.pdf filter.pdf misq.pdf lambda.pdf

model.pdf : model.tex
	pdflatex model.tex

filter.pdf : filter.tex
	pdflatex filter.tex
	
model.tex : model.md
	pandoc -s model.md -o model.tex
	
	
	
filter.tex: filter.md
	pandoc -s filter.md -o filter.tex

misq.pdf : misq.tex
	pdflatex misq.tex

misq.tex : misq.md
	pandoc -s misq.md -o misq.tex

lambda.pdf : lambda.tex
	pdflatex lambda.tex

lambda.tex : lambda.md
	pandoc -s lambda.md -o lambda.tex
