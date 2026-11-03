LATEX_FLAGS = -xelatex -interaction=nonstopmode -file-line-error -jobname=$(PDF_NAME) -output-directory=$(DIR_BUILD)

default: compile view

compile:
	mkdir -p $(DIR_BUILD)
	latexmk $(LATEX_FLAGS) $(TEX_NAME).tex

clean:
	rm -rf $(DIR_BUILD)

view:
	xdg-open $(DIR_BUILD)/$(PDF_NAME).pdf >/dev/null 2>&1

.PHONY: default compile clean view
