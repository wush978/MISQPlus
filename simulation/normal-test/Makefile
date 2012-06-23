
R_SOURCE := misq1-1.R  misq1-2.R  misq1-3.R  misq1-4.R
R_DATA := $(R_SOURCE:.R=.Rdata)

all : sim.html

sim.html : sim.yml
	php ../yml2rmd/yml2rmd.php sim.yml sim.Rmd
	Rscript -e "require(knitr);require(markdown);knit('sim.Rmd','sim.md');markdownToHTML('sim.md','sim.html')"

clean :
	-rm *.Rmd
	-rm *.md
	-rm *.html

show :
	google-chrome sim.html

debug :
	php -r "print_r(yaml_parse_file('sim.yml'));"
