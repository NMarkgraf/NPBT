# ######################################################################################
# Makefile (C) in 2018 by Norman Markgraf
# ========
# Version 2.0 	nm (15. Aug. 2018) 	New first release
# Version 2.1 	nm (10. Okt. 2018) 	some updates
MAKEFILEVERSION=2.1
#
# 
#
# ######################################################################################
RELEASE="v4.1.2"
RELDATE="2018/10/10"
# ######################################################################################
PKGNAME=beamertheme-npbt
SRC=src
BUILD=build
EXAMPLE=examples
PKGBUILD=$(BUILD)/$(PKGNAME)-$(RELEASE)
EXBUILD=$(BUILD)/$(EXAMPLE)
RSCRIPT=Rscript

build-examples: build
	mkdir $(EXBUILD)
	cp -R $(PKGBUILD)/* $(EXBUILD)
	cp -R $(EXAMPLE)/* $(EXBUILD)
	cd $(EXBUILD); $(RSCRIPT) ./render_tests.R

build:
	mkdir $(PKGBUILD)
	cp -R $(SRC)/* $(PKGBUILD)
	cp ReleaseNotes.md $(PKGBUILD)
	cp README.md $(PKGBUILD)
	cd $(PKGBUILD); pandoc -i README.md -o README.html
	cd $(PKGBUILD); pandoc -i ReleaseNotes.md -o ReleaseNotes.html
	cd $(PKGBUILD); sed -i -e "s_YYYY/MM/DD vX.X.X_$(RELDATE) $(RELEASE)_g" *.sty; rm *.sty-e
	cd $(BUILD); zip -r $(PKGNAME)-$(RELEASE).zip $(PKGNAME)-$(RELEASE)

clean-build:
	-rm -r $(PKGBUILD)

clean-examples:
	-rm -r $(EXBUILD)

clean: clean-build clean-examples
	echo "Done."

# --------------------------------------------------------------------------------------
#
.PHONY: build build-examples clean

# --------------------------------------------------------------------------------------
# EoF
# ######################################################################################
