
all : sim.html

sim.html : sim.Rmd
	Rscript -e "require(knitr);require(markdown);knit('sim.Rmd','sim.md');markdownToHTML('sim.md','sim.html')"

clean :
	-rm *.md
	-rm *.html
	-rm build/*
	-rm cache/*

show :
	google-chrome sim.html