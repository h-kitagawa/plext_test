all: test-yoko.pdf test-tate.pdf
test-yoko.pdf: test-yoko.tex test.tex
	ptex2pdf -l -od '-f ptex-ipa.map' test-yoko ; exit 0
test-tate.pdf: test-tate.tex test.tex
	ptex2pdf -l -od '-f ptex-ipa.map' test-tate ; exit 0
