all: test-yoko.pdf test-tate.pdf test-yoko-bls.pdf test-tate-bls.pdf
test-yoko.pdf: test-yoko.tex test.tex plext-beta.sty
	ptex2pdf -l -od '-f ptex-ipa.map' test-yoko ; exit 0
test-tate.pdf: test-tate.tex test.tex plext-beta.sty
	ptex2pdf -l -od '-f ptex-ipa.map' test-tate ; exit 0
test-yoko-bls.pdf: test-yoko-bls.tex test.tex plext-beta.sty
	ptex2pdf -l -od '-f ptex-ipa.map' test-yoko-bls ; exit 0
test-tate-bls.pdf: test-tate-bls.tex test.tex plext-beta.sty
	ptex2pdf -l -od '-f ptex-ipa.map' test-tate-bls ; exit 0
