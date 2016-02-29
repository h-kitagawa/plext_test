all: ybls-test.pdf
ybls-test.pdf: ybls-stable.pdf ybls.pdf ybls-test.tex
	pdflatex ybls-test.tex
ybls-stable.pdf: ybls.tex
	uplatex -jobname=ybls-stable ybls.tex
	dvipdfmx ybls-stable
ybls.pdf: ybls.tex
	platex ybls.tex
	dvipdfmx ybls
