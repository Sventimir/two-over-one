
all: conventions.pdf

clean:
	rm -rf build *.pdf

%.pdf: %.tex
	@pdflatex -output-directory build $<
	@cp build/$@ .
