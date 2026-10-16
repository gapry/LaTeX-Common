LATEX_FLAGS = -xelatex -interaction=nonstopmode -file-line-error -jobname=$(FILENAME) -output-directory=$(DIR_BUILD)

default: compile view

compile:
	mkdir -p $(DIR_BUILD)
	latexmk $(LATEX_FLAGS) $(FILENAME).tex

clean:
	rm -rf $(DIR_BUILD)

view:
	xdg-open $(DIR_BUILD)/$(FILENAME).pdf >/dev/null 2>&1

.PHONY: default compile clean view
