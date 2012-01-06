performance-tuning-file-name := performance-tuning

default: show-performance-tuning

%.pdf: %.tex
	pdflatex $*.tex
	pdflatex $*.tex

show-performance-tuning: ${performance-tuning-file-name}.pdf
	evince ${performance-tuning-file-name}.pdf

clean:
	rm *.aux *.log *.nav *.out *.pdf *.snm *.toc	

