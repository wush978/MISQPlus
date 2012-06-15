YMLFILE := $(wildcard *.yml)

RMDFILE := $(YMLFILE:.yml=.Rmd)

HTMLFILE := $(YMLFILE:.yml=.html)

all : $(HTMLFILE)

$(RMDFILE) : $(YMLFILE)
	php generate.php $(@:.Rmd=.yml)
	
$(HTMLFILE) : $(RMDFILE)
	R --slave --vanilla --args $(@:.html=.Rmd) < generate.R

clean :
	-rm *.Rmd
	-rm *.html
	-rm *.md

show :
	google-chrome $(HTMLFILE)
