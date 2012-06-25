all : sim.html

sim.html : sim.yml
	-mkdir build
	-mkdir cache
	php ../yml2rmd/yml2rmd.php sim.yml sim.Rmd
	Rscript -e "require(knitr);require(markdown);knit('sim.Rmd','sim.md');markdownToHTML('sim.md','sim.html')"

clean :
	-rm *.Rmd
	-rm *.md
	-rm *.html
	-rm build/*
	-rm cache/*

show :
	google-chrome sim.html

debug :
	php -r "print_r(yaml_parse_file('sim.yml'));"
