PDFLATEX:=pdflatex
BIBTEX:=bibtex


TEX_SRC=interim_report.tex

${TEX_SRC:.tex=.pdf}:%.pdf: %.tex %.bib 
	$(PDFLATEX) $<
	$(BIBTEX) ${<:.tex=}
	$(PDFLATEX) $<
	$(PDFLATEX) $<

clean:
	rm -f ${TEX_SRC:.tex=.pdf} *.out *.aux *.log *.pdf *.bbl *.blg


.PHONY: clean
