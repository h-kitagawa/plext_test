all: test-yoko.pdf test-tate.pdf
test-yoko.pdf: test-yoko.tex test.tex plext-beta.sty
	ptex2pdf -l -od '-f ptex-ipa.map' test-yoko ; exit 0
test-tate.pdf: test-tate.tex test.tex plext-beta.sty
	ptex2pdf -l -od '-f ptex-ipa.map' test-tate ; exit 0
