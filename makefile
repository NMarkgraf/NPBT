# ######################################################################################
# Makefile (C) in 2016/17 by Norman Markgraf
# ========
# Version 1.0 	nm (17. Jul. 2016) 	First Release
MAKEFILEVERSION=1.0
#
# 
#
# ######################################################################################

# --------------------------------------------------------------------------------------
#  Setup local variables
#
# Use _kpsewhich_ to find _TEXMFHOME_ which is the path to the LaTeX user-tex folder,
# where we will create a folder named _tex_ and a subfolder named _NPBT_.
# All modern TeX distributions will search for packages in these folders, so thery will 
# find the _NPBT_ suff, if it will be copied in this folder. 
#

TEXMFHOME=$(shell kpsewhich --var-value=TEXMFHOME) 
TEXTMFHOMETEX=$TEXMFHOME)/tex
INSTALLPATH=$(TEXMFHOMEtex)/NPBT

# --------------------------------------------------------------------------------------
# Check if there is a TEXMFHOME folder, if not create one!
#
$(TEXMFHOME):
	@echo "Folder $(TEXMFHOME) does not exist! Try to make folder!"
	mkdir -p $@

# --------------------------------------------------------------------------------------
# Check if there is a tex sub-folder in TEXMFHOME, if not create it!
#
$(TEXMFHOMETEX):
	@echo "Folder $(TEXMFHOMETEX) does not exist! Try to make folder!"
	mkdir -p $@

# --------------------------------------------------------------------------------------
# Check if there is a NPBT folder in the tex subfolder of TEXMFHOME, if not create one!
#
$(INSTALLPATH): $(TEXTMFHOMETEX)
	@echo "Folder $(INSTALLPATH) does not exist! Try to make folder!"
	mkdir -p $@

# --------------------------------------------------------------------------------------
# Remove complete installation
#
proper: clean
	rm -rf $(INSTALLPATH)

# --------------------------------------------------------------------------------------
# Do some cleaning ....
#
clean:
	@echo "Cleaning ..."

# --------------------------------------------------------------------------------------
# Copy all needed stuff to INSTALLPATH
#
install: $(INSTALLPATH)
	cp *.sty $(INSTALLPATH)
	cp *.tex $(INSTALLPATH)	
	cp LICENSE $(INSTALLPATH)
	cp README.* $(INSTALLPATH)
	cp ReleaseNotes.md $(INSTALLPATH)
	cp -R images $(INSTALLPATH)/images

# --------------------------------------------------------------------------------------
# Do the same as _install_
#
deploy: install
	
# --------------------------------------------------------------------------------------
#
#
all: $(TEXMFHOME)
	@echo "Folder $(TEXMFHOME) exists!"

# --------------------------------------------------------------------------------------
#
.PHONY: all proper clean install deploy

# --------------------------------------------------------------------------------------
# EoF
# ######################################################################################
