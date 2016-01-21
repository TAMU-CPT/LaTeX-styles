COMPILER = xelatex
PROJ = main
MAIN = $(PROJ).tex
TEXPATH = TEXINPUTS="../..:" BSTINPUTS="../../:"

# Default target
all: $(PROJ).pdf

# Cleans first, to ensure a complete build
force_all: clean
	make $(PROJ).pdf

# Glossary user-target
glossary: $(PROJ).gls

# Update user-target
compile: $(PROJ).gls extra/vc.tex
	$(TEXPATH) $(COMPILER) $(MAIN)

# Glossary system-target
$(PROJ).gls:
	-$(TEXPATH) $(COMPILER) $(MAIN)
	-$(TEXPATH) makeglossaries $(PROJ)

# Bib system-target
$(PROJ).blg:
	-$(TEXPATH) $(COMPILER) $(MAIN)
	-$(TEXPATH) bibtex $(PROJ)

# Git info target
extra/vc.tex:
	./vc -m

# Complete build system-target
$(PROJ).pdf: $(PROJ).gls $(PROJ).blg extra/vc.tex
	$(TEXPATH) makeglossaries $(PROJ)
	$(TEXPATH) $(COMPILER) $(MAIN)
	$(TEXPATH) $(COMPILER) $(MAIN)

# Cleanup
clean:
	-rm -f $(PROJ)2.html  $(PROJ).4tc  $(PROJ).css  $(PROJ).glo  $(PROJ).html  $(PROJ).idx  $(PROJ).ind  $(PROJ).lg   $(PROJ).out  $(PROJ).tmp \
	$(PROJ).4ct    $(PROJ).aux  $(PROJ).glg  $(PROJ).gls  $(PROJ).idv   $(PROJ).ilg  $(PROJ).ist  $(PROJ).log  $(PROJ).pdf  $(PROJ).toc $(PROJ).xdv $(PROJ).xref\
	$(PROJ).tui $(PROJ).tuo $(PROJ).dvi $(PROJ).lof  $(PROJ).odt  $(PROJ).xref $(PROJ).acn  $(PROJ).acr  $(PROJ).alg $(PROJ).bbl $(PROJ).blg extra/vc.tex

clean_vc:
	rm -f extra/vc.tex

minitopics:
	$(MAKE) -C minitopics/

modules:
	$(MAKE) -C modules/

.PHONY: minitopics modules glossary all force_all clean extra/vc.tex
