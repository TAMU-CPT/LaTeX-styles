help:
	@egrep '^[a-zA-Z_.-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%s\033[0m\n    %s\n", $$1, $$2}'

all: gloss.tex acronyms.tex ## Build all

Glossary.tsv:
	gdrive export --mime text/tab-separated-values -f 1B-AFR8P0k3zNHsvu6k_11mUADThkg-uWyv6XmiqOQjY

gloss.tex: Glossary.tsv ## Build gloss.tex
	python process_glossary.py Glossary.tsv > gloss.tex

Acronyms.tsv:
	gdrive export --mime text/tab-separated-values -f 1_yLRPsgdS3meV914nGMBzNjAgFzD3VE0pplg3DwWWzo

acronyms.tex: Acronyms.tsv ## Build acronyms.tex
	python process_acronyms.py Acronyms.tsv > acronyms.tex

# Cause to re-download EVERY time.
.PHONY: Glossary.tsv Acronyms.tsv
