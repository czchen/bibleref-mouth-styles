.DEFAULT_GOAL:=all

all: bibleref-mouth-styles.pdf

bibleref-mouth-styles.sty: bibleref-mouth-styles.ins bibleref-mouth-styles.dtx
	xelatex $<

bibleref-mouth-styles.pdf: bibleref-mouth-styles.dtx bibleref-mouth-styles.sty
	latexmk -xelatex -interaction=nonstopmode $<

.PHONY: clean
clean:
	latexmk -C
	rm -f *.aux *.log *.out *.fls *.fdb_latexmk *.sty
