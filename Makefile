
all: conventions.pdf

clean:
	rm -rf build *.pdf

%.pdf: %.tex
	@mkdir -p build
	@pdflatex -output-directory build $<
	@cp build/$@ .
