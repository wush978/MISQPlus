DOC := filter.pdf misq.pdf model.pdf


PAPER := paper/document.pdf

SIMULATION := simulation/moment-test.html simulation/normal-test.html simulation/verify-table-moment-e.html simulation/verify-table-moment-Phie.html

all : $(DOC:%.pdf=doc/%.pdf) $(PAPER) $(SIMULATION)

$(DOC:%.pdf=doc/%.pdf) :
	-@mkdir doc
	@echo $(@:doc/%.pdf=../doc/src/%.pdf) $@ 

$(PAPER) :
	-@mkdir paper
	@cp ../$@ $@
	
$(SIMULATION) :
	-@mkdir simulation
	@cp ../$(@:.html=)/sim.html $@

clean :
	-rm -rf doc
	-rm -rf paper
	-rm -rf simulation