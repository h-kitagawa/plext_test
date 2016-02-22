all: test-yoko.pdf test-tate.pdf
test-yoko.pdf:
	ptex2pdf -l -od '-f ptex-ipa.map' test-yoko ; exit 0
test-tate.pdf:
	ptex2pdf -l -od '-f ptex-ipa.map' test-tate ; exit 0
