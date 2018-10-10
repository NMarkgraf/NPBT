# ######################################################################################
# Makefile (C) in 2018 by Norman Markgraf
# ========
# Version 2.0 	nm (15. Aug. 2018) 	New first release
MAKEFILEVERSION=2.0
#
# 
#
# ######################################################################################

RELEASE=v4.1.2
PKGNAME=beamertheme-npbt
SRC=src
BUILD=build
EXAMPLE=examples
PKGBUILD=$(BUILD)/$(PKGNAME)-$(RELEASE)
EXBUILD=$(BUILD)/$(EXAMPLE)
RSCRIPT=Rscript

build-examples:
	mkdir $(EXBUILD)
	cp -R $(SRC)/* $(EXBUILD)
	cp -R $(EXAMPLE)/* $(EXBUILD)
	cd $(EXBUILD); $(RSCRIPT) ./render_tests.R

build:
	mkdir $(PKGBUILD)
	cp -R $(SRC)/* $(PKGBUILD)
	cd $(BUILD); zip -r $(PKGNAME)-$(RELEASE).zip $(PKGNAME)-$(RELEASE)

clean-build:
	rm -r $(PKGBUILD)

clean-examples:
	rm -r $(EXBUILD)

clean: clean-build clean-examples
	echo "Done."

# --------------------------------------------------------------------------------------
#
.PHONY: build build-examples clean

# --------------------------------------------------------------------------------------
# EoF
# ######################################################################################
