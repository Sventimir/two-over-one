
all: conventions.pdf

clean:
	rm -rf build *.pdf

.SECONDEXPANSION:	# Variables in targets below this line are exapnded twice, where second expansion occurrs
					# AFTER pattern was matched by an ctual file.

dependencies=$(shell sed -rne 's/^.*\\input\{([^\}]+)\}.*$//\1.tex/p' $*.tex) # NOTE : $< works here as it wouldn't in the first expansion!

%.pdf: %.tex style.sty $$(dependencies) # This gets exapnded twice, hence double $ to escape the first expansion
	@echo $^
	@mkdir -p build
	@pdflatex -output-directory build $<
	@cp build/$@ .
