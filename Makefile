COMPILER = xelatex
PROJ = main
MAIN = $(PROJ).tex
TEXPATH = TEXINPUTS="../..:" BSTINPUTS="../../:"

# Default target
all: vc.tex
	TEXINPUTS="style/:./:" latexmk -pdf -r .latexmkrc main.tex

# Cleans first, to ensure a complete build
force_all: clean
	make $(PROJ).pdf

# Git info target
vc.tex:
	./vc -m > vc.tex

# Cleanup
clean:
	-rm -f $(PROJ)2.html  $(PROJ).4tc  $(PROJ).css  $(PROJ).glo  $(PROJ).html  $(PROJ).idx  $(PROJ).ind  $(PROJ).lg   $(PROJ).out  $(PROJ).tmp \
	$(PROJ).4ct    $(PROJ).aux  $(PROJ).glg  $(PROJ).gls  $(PROJ).idv   $(PROJ).ilg  $(PROJ).ist  $(PROJ).log  $(PROJ).pdf  $(PROJ).toc $(PROJ).xdv $(PROJ).xref\
	$(PROJ).tui $(PROJ).tuo $(PROJ).dvi $(PROJ).lof  $(PROJ).odt  $(PROJ).xref $(PROJ).acn  $(PROJ).acr  $(PROJ).alg $(PROJ).bbl $(PROJ).blg vc.tex $(PROJ).fdb_latexmk\
	$(PROJ).brf  $(PROJ).fls main.fls vc.fls *.fdb_latexmk *.brf vc.aux

clean_vc:
	rm -f vc.tex

minitopics:
	$(MAKE) -C minitopics/

modules:
	$(MAKE) -C modules/

.PHONY: minitopics modules all force_all clean vc.tex
