# Two-over-one

This is a full description of two-over-one duplicate bridge bidding system as used by me and my partner.
It is written in LaTeX and a Makefile is provided to ease the building process. It is configured to use
`pdflatex` command, so you need to edit it accordingly in case you want to build with another compiler,
which may or may not be possible. In order to build all documents (of which the main and most important
is system.tex) just type:

```
$ make
```

You can also build any specific `PDF` for which there is a corresponding `TEX` file in the main directory:

```
$ make system.pdf
```

In case you don't have make in your system, you have to turn to your concrete compiler for instructions
for compiling the files.
