all : model.pdf

model.pdf : model.tex
	pdflatex model.tex
	
model.tex : model.md
	pandoc -s model.md -o model.tex
