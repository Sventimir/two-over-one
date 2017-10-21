
all: conventions.pdf

clean:
	rm -rf build *.pdf

conventions.pdf: conventions.tex | tex/conventions/ogust.tex tex/conventions/bart.tex
	@mkdir -p build
	@pdflatex -output-directory build $<
	@cp build/$@ .

%.pdf: %.tex
	@mkdir -p build
	@pdflatex -output-directory build $<
	@cp build/$@ .
