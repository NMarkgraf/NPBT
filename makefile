# ######################################################################################
# Makefile (C) in 2018 by Norman Markgraf
# ========
# Version 2.0 	nm (15. Aug. 2018) 	New first release
# Version 2.1 	nm (10. Okt. 2018) 	some updates
# Version 2.2 	nm (11. Okt. 2018) 	some updates
MAKEFILEVERSION=2.2
#
# 
#
# ######################################################################################
RELEASE="v4.1.2"
RELDATE="2018/10/11"
# ######################################################################################
PKGNAME=beamertheme-npbt
SRC=src
BUILD=build
EXAMPLE=examples
PKGBUILD=$(BUILD)/$(PKGNAME)-$(RELEASE)
EXBUILD=$(BUILD)/$(EXAMPLE)
RSCRIPT=Rscript

# WINDOWS:
# MKDIROPT=--mode=a+wrx
#CPOPT=--no-preserve=all

# UNIX:
MKDIROPT=-m a+wrx
CPOPT=

build-examples: build
	mkdir $(MKDIROPT) $(EXBUILD)
	cp -R $(CPOPT) $(PKGBUILD)/* $(EXBUILD)
	cp -R $(CPOPT) $(EXAMPLE)/* $(EXBUILD)
	cd $(EXBUILD); $(RSCRIPT) ./render_tests.R

build:
	mkdir $(MKDIROPT) $(PKGBUILD)
	cp -R $(CPOPT) $(SRC)/* $(PKGBUILD)
	cp $(CPOPT) ReleaseNotes.md $(PKGBUILD)
	cp $(CPOPT) README.md $(PKGBUILD)
	cd $(PKGBUILD); pandoc -i README.md -o README.html
	cd $(PKGBUILD); pandoc -i ReleaseNotes.md -o ReleaseNotes.html
	cd $(PKGBUILD); sed -i -e "s_YYYY/MM/DD vX.X.X_$(RELDATE) $(RELEASE)_g" *.sty;
	if [ -f $(PKGBUILD)/beamerthemeNPBT.sty-e ]; then cd $(PKGBUILD); rm *.sty-e; fi
	cd $(PKGBUILD); chmod -R a+rwx *
	cd $(BUILD); zip -r9 $(PKGNAME)-$(RELEASE).zip $(PKGNAME)-$(RELEASE)

clean-build:
	if [ -d $(PKGBUILD) ]; then rm -r $(PKGBUILD); fi
	if [ -f $(BUILD)/$(PKGNAME)-$(RELEASE).zip ]; then rm -r $(BUILD)/$(PKGNAME)-$(RELEASE).zip; fi

clean-examples:
	if [ -d $(EXBUILD) ]; then rm -r $(EXBUILD); fi

clean: clean-build clean-examples
	@echo "Done."

proper-build: clean-build
	if [ -f $(BUILD)/$(PKGNAME)-$(RELEASE).zip ]; then rm -r $(BUILD)/$(PKGNAME)-$(RELEASE).zip; fi


# --------------------------------------------------------------------------------------
#
.PHONY: build build-examples clean

# --------------------------------------------------------------------------------------
# EoF
# ######################################################################################
