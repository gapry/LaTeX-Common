LATEX_FLAGS = -xelatex -interaction=nonstopmode -file-line-error -jobname=$(FILENAME)

default: compile view

compile:
	latexmk $(LATEX_FLAGS) $(FILENAME).tex

clean:
	find . -type f | grep -E '\.(aux|dvi|log|toc|sta|xdv|fls|fdb_latexmk|synctex\.gz|pdf|out)$$' | xargs rm -f

view:
	xdg-open $(FILENAME).pdf >/dev/null 2>&1

.PHONY: default compile clean view
