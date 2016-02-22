all: test-yoko.pdf test-tate.pdf
test-yoko.pdf:
	ptex2pdf -l -od '-f ptex-ipa.map' test-yoko
test-tate.pdf:
	ptex2pdf -l -od '-f ptex-ipa.map' test-tate
