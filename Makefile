
all: conventions.pdf

%.pdf: %.tex
	@pdflatex -output-directory build $<
	@cp build/$@ .
