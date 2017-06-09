COMPILER = xelatex

# Default target
all:
	TEXINPUTS="../:" latexmk -pdf -r .latexmkrc slides.tex

clean:
	TEXINPUTS="../:" latexmk -pdf -r .latexmkrc -c slides.tex
	rm -f slides.nav slides.snm

.PHONY: all
