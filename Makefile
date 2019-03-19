# Makefile for Sphinx documentation and Git Large File Support
#

# You can set these variables from the command line.
SPHINXOPTS    =
SPHINXBUILD   = sphinx-build
PAPER         = 
BUILDDIR      = ../WPCD-Workflows.github.io

# External data support for large files
ifeq ("$(wildcard /marconi_work/eufus_gw/scratch)",\
		 "/marconi_work/eufus_gw/scratch")
  ASSETDIR ?= /marconi_work/eufus_gw/scratch/g2kosl/shared/assets/MD5
  ASSETDIR_GROUP ?= g2itmdev
else
  ASSETDIR ?= ${HOME}/assets/MD5
endif


TOKEN ?= $(shell sed -ne '/url/s|.*https://\([^@]*\).*|\1|p' .git/config)
GITHUB_ASSETS_REPOSITORY ?= WPCD-Workflows/assets
EXTERNALDATA ?= https://github.com/$(GITHUB_ASSETS_REPOSITORY)/raw/master
HASHES := $(wildcard source/static/*.md5)

ASSETS = $(HASHES:%.md5=%)
UNPACKED_HTML = $(patsubst %.zip,%,$(filter %.zip, $(ASSETS)))


# The shell in which to execute make rules.
SHELL = /bin/sh

ASSET_LINK ?= ln -sf

# Internal variables.
PAPEROPT_a4     = -D latex_paper_size=a4
PAPEROPT_letter = -D latex_paper_size=letter
ALLSPHINXOPTS   = -d $(BUILDDIR)/doctrees $(PAPEROPT_$(PAPER)) $(SPHINXOPTS) source
# the i18n builder cannot share the environment and doctrees with the others
I18NSPHINXOPTS  = $(PAPEROPT_$(PAPER)) $(SPHINXOPTS) source

.PHONY: help help-assets
help: 
	@echo "Please use \`make <target>' where <target> is one of"
	@echo "  html       to make standalone HTML files"
	@echo "  dirhtml    to make HTML files named index.html in directories"
	@echo "  singlehtml to make a single large HTML file"
	@echo "  pickle     to make pickle files"
	@echo "  json       to make JSON files"
	@echo "  htmlhelp   to make HTML files and a HTML help project"
	@echo "  qthelp     to make HTML files and a qthelp project"
	@echo "  applehelp  to make an Apple Help Book"
	@echo "  devhelp    to make HTML files and a Devhelp project"
	@echo "  epub       to make an epub"
	@echo "  epub3      to make an epub3"
	@echo "  latex      to make LaTeX files, you can set PAPER=a4 or PAPER=letter"
	@echo "  latexpdf   to make LaTeX files and run them through pdflatex"
	@echo "  latexpdfja to make LaTeX files and run them through platex/dvipdfmx"
	@echo "  text       to make text files"
	@echo "  man        to make manual pages"
	@echo "  texinfo    to make Texinfo files"
	@echo "  info       to make Texinfo files and run them through makeinfo"
	@echo "  gettext    to make PO message catalogs"
	@echo "  changes    to make an overview of all changed/added/deprecated items"
	@echo "  xml        to make Docutils-native XML files"
	@echo "  pseudoxml  to make pseudoxml-XML files for display purposes"
	@echo "  linkcheck  to check all external links for integrity"
	@echo "  doctest    to run all doctests embedded in the documentation (if enabled)"
	@echo "  coverage   to run coverage check of the documentation (if enabled)"
	@echo "  dummy      to check syntax errors of document sources"
	@echo "  help-assets to get a list of files available externaly"

.PHONY: clean
clean:
	rm -rf $(BUILDDIR)/*

.PHONY: html
html: $(ASSETS) $(UNPACKED_HTML)
	$(SPHINXBUILD) -b html $(ALLSPHINXOPTS) $(BUILDDIR)
	@echo
	@echo "Build finished. The HTML pages are in $(BUILDDIR)."

.PHONY: dirhtml
dirhtml:
	$(SPHINXBUILD) -b dirhtml $(ALLSPHINXOPTS) $(BUILDDIR)/dirhtml
	@echo
	@echo "Build finished. The HTML pages are in $(BUILDDIR)/dirhtml."

.PHONY: singlehtml
singlehtml:
	$(SPHINXBUILD) -b singlehtml $(ALLSPHINXOPTS) $(BUILDDIR)/singlehtml
	@echo
	@echo "Build finished. The HTML page is in $(BUILDDIR)/singlehtml."

.PHONY: pickle
pickle:
	$(SPHINXBUILD) -b pickle $(ALLSPHINXOPTS) $(BUILDDIR)/pickle
	@echo
	@echo "Build finished; now you can process the pickle files."

.PHONY: json
json:
	$(SPHINXBUILD) -b json $(ALLSPHINXOPTS) $(BUILDDIR)/json
	@echo
	@echo "Build finished; now you can process the JSON files."

.PHONY: htmlhelp
htmlhelp:
	$(SPHINXBUILD) -b htmlhelp $(ALLSPHINXOPTS) $(BUILDDIR)/htmlhelp
	@echo
	@echo "Build finished; now you can run HTML Help Workshop with the" \
	      ".hhp project file in $(BUILDDIR)/htmlhelp."

.PHONY: qthelp
qthelp:
	$(SPHINXBUILD) -b qthelp $(ALLSPHINXOPTS) $(BUILDDIR)/qthelp
	@echo
	@echo "Build finished; now you can run "qcollectiongenerator" with the" \
	      ".qhcp project file in $(BUILDDIR)/qthelp, like this:"
	@echo "# qcollectiongenerator $(BUILDDIR)/qthelp/EUROfusionIntegratedModellingworkflows.qhcp"
	@echo "To view the help file:"
	@echo "# assistant -collectionFile $(BUILDDIR)/qthelp/EUROfusionIntegratedModellingworkflows.qhc"

.PHONY: applehelp
applehelp:
	$(SPHINXBUILD) -b applehelp $(ALLSPHINXOPTS) $(BUILDDIR)/applehelp
	@echo
	@echo "Build finished. The help book is in $(BUILDDIR)/applehelp."
	@echo "N.B. You won't be able to view it unless you put it in" \
	      "~/Library/Documentation/Help or install it in your application" \
	      "bundle."

.PHONY: devhelp
devhelp:
	$(SPHINXBUILD) -b devhelp $(ALLSPHINXOPTS) $(BUILDDIR)/devhelp
	@echo
	@echo "Build finished."
	@echo "To view the help file:"
	@echo "# mkdir -p $$HOME/.local/share/devhelp/EUROfusionIntegratedModellingworkflows"
	@echo "# ln -s $(BUILDDIR)/devhelp $$HOME/.local/share/devhelp/EUROfusionIntegratedModellingworkflows"
	@echo "# devhelp"

.PHONY: epub
epub:
	$(SPHINXBUILD) -b epub $(ALLSPHINXOPTS) $(BUILDDIR)/epub
	@echo
	@echo "Build finished. The epub file is in $(BUILDDIR)/epub."

.PHONY: epub3
epub3:
	$(SPHINXBUILD) -b epub3 $(ALLSPHINXOPTS) $(BUILDDIR)/epub3
	@echo
	@echo "Build finished. The epub3 file is in $(BUILDDIR)/epub3."

.PHONY: latex
latex: $(ASSETS)
	$(SPHINXBUILD) -b latex $(ALLSPHINXOPTS) $(BUILDDIR)/latex
	@echo
	@echo "Build finished; the LaTeX files are in $(BUILDDIR)/latex."
	@echo "Run \`make' in that directory to run these through (pdf)latex" \
	      "(use \`make latexpdf' here to do that automatically)."

.PHONY: latexpdf
latexpdf: $(ASSETS)
	$(SPHINXBUILD) -b latex $(ALLSPHINXOPTS) $(BUILDDIR)/latex
	@echo "Running LaTeX files through pdflatex..."
	$(MAKE) -C $(BUILDDIR)/latex all-pdf
	@echo "pdflatex finished; the PDF files are in $(BUILDDIR)/latex."

.PHONY: latexpdfja
latexpdfja:
	$(SPHINXBUILD) -b latex $(ALLSPHINXOPTS) $(BUILDDIR)/latex
	@echo "Running LaTeX files through platex and dvipdfmx..."
	$(MAKE) -C $(BUILDDIR)/latex all-pdf-ja
	@echo "pdflatex finished; the PDF files are in $(BUILDDIR)/latex."

.PHONY: text
text:
	$(SPHINXBUILD) -b text $(ALLSPHINXOPTS) $(BUILDDIR)/text
	@echo
	@echo "Build finished. The text files are in $(BUILDDIR)/text."

.PHONY: man
man:
	$(SPHINXBUILD) -b man $(ALLSPHINXOPTS) $(BUILDDIR)/man
	@echo
	@echo "Build finished. The manual pages are in $(BUILDDIR)/man."

.PHONY: texinfo
texinfo:
	$(SPHINXBUILD) -b texinfo $(ALLSPHINXOPTS) $(BUILDDIR)/texinfo
	@echo
	@echo "Build finished. The Texinfo files are in $(BUILDDIR)/texinfo."
	@echo "Run \`make' in that directory to run these through makeinfo" \
	      "(use \`make info' here to do that automatically)."

.PHONY: info
info:
	$(SPHINXBUILD) -b texinfo $(ALLSPHINXOPTS) $(BUILDDIR)/texinfo
	@echo "Running Texinfo files through makeinfo..."
	make -C $(BUILDDIR)/texinfo info
	@echo "makeinfo finished; the Info files are in $(BUILDDIR)/texinfo."

.PHONY: gettext
gettext:
	$(SPHINXBUILD) -b gettext $(I18NSPHINXOPTS) $(BUILDDIR)/locale
	@echo
	@echo "Build finished. The message catalogs are in $(BUILDDIR)/locale."

.PHONY: changes
changes:
	$(SPHINXBUILD) -b changes $(ALLSPHINXOPTS) $(BUILDDIR)/changes
	@echo
	@echo "The overview file is in $(BUILDDIR)/changes."

.PHONY: linkcheck
linkcheck:
	$(SPHINXBUILD) -b linkcheck $(ALLSPHINXOPTS) $(BUILDDIR)/linkcheck
	@echo
	@echo "Link check complete; look for any errors in the above output " \
	      "or in $(BUILDDIR)/linkcheck/output.txt."

.PHONY: doctest
doctest:
	$(SPHINXBUILD) -b doctest $(ALLSPHINXOPTS) $(BUILDDIR)/doctest
	@echo "Testing of doctests in the sources finished, look at the " \
	      "results in $(BUILDDIR)/doctest/output.txt."

.PHONY: coverage
coverage:
	$(SPHINXBUILD) -b coverage $(ALLSPHINXOPTS) $(BUILDDIR)/coverage
	@echo "Testing of coverage in the sources finished, look at the " \
	      "results in $(BUILDDIR)/coverage/python.txt."

.PHONY: xml
xml:
	$(SPHINXBUILD) -b xml $(ALLSPHINXOPTS) $(BUILDDIR)/xml
	@echo
	@echo "Build finished. The XML files are in $(BUILDDIR)/xml."

.PHONY: pseudoxml
pseudoxml:
	$(SPHINXBUILD) -b pseudoxml $(ALLSPHINXOPTS) $(BUILDDIR)/pseudoxml
	@echo
	@echo "Build finished. The pseudo-XML files are in $(BUILDDIR)/pseudoxml."

.PHONY: dummy
dummy:
	$(SPHINXBUILD) -b dummy $(ALLSPHINXOPTS) $(BUILDDIR)/dummy
	@echo
	@echo "Build finished. Dummy builder generates no files."


.PRECIOUS: %.md5-stamp
.PHONY: help help-assets clean realclean assets publish all doc token

-include depend

# If the asset already exist the we don't want to change its timestamp as
# this may impact other's (re)builds. Therefore MD5 and timestamps needs
# to be backdated in this case.
% : %.md5-stamp
	if test -f $(ASSETDIR)/$(shell cat $^); \
	then touch -r $(ASSETDIR)/$(shell cat $^) -d "-1 minute" $^; \
	     touch -r $^ -d "-1 minute" $(patsubst %.md5-stamp, %.md5, $^); \
	else make $(ASSETDIR)/$(shell cat $^); fi
	$(ASSET_LINK) $(ASSETDIR)/$(shell cat $^) $@

%.md5-stamp : %.md5
	cat $^ > $@

% : %.zip
	unzip -q -d $@ $^

# Downloads asset and makes it available to the group for linking to it
$(ASSETDIR)/% :
	if ! test -d $(ASSETDIR); \
	   then mkdir -m 3775 -p $(ASSETDIR); \
	   if test "x$(ASSETDIR_GROUP)" != "x"; \
	        then chgrp $(ASSETDIR_GROUP) $(ASSETDIR); \
	   fi; \
	fi
	curl --location --fail --insecure \
		--output $(ASSETDIR)/$(@F) $(EXTERNALDATA)/$(@F)
	if test $$(md5sum $(ASSETDIR)/$(@F)|cut -c 1-32) = $(@F) ; then \
	  chmod g+rw $(ASSETDIR)/$(@F);\
	else\
	  rm -f $(ASSETDIR)/$(@F); \
	  echo "Error: Checksum of $(ASSETDIR)/$(@F) incorrect! Removing it.";\
	  exit 1;\
	fi

depend: $(HASHES)
	@echo "# Do not edit this file as it is autogenerated!" > $@
	@for f in $(HASHES) ; do \
	  echo "$${f%.md5} : $${f}-stamp" >> $@; \
	  echo "$${f}-stamp : $${f}" >> $@; \
	  stamps="$${stamps} $${f}-stamp"; \
	done; \
	echo "STAMPS =$${stamps}" >> $@

clean-assets:
	rm -fr $(ASSETS) $(STAMPS) $(UNPACKED_HTML) .*.md5-stamp depend

# Do not use unless really necessary
realclean: clean-assets
	rm -rf $(ASSETDIR)


# calls: PUT /repos/:owner/:repo/contents/:path
# See http://developer.github.com/v3/repos/contents#create-a-file
push:
	@if test -z "$(TOKEN)" ; then \
	  echo "Please see README.md for setting remote TOKEN!";\
	  exit 1;\
	fi
	@for file in $(wildcard $(asset)); do if test -f "$${file}" ; then \
	  md5=$$(md5sum $${file} | cut -c 1-32);\
	  echo "$${md5}" > $${file}.md5; repo=$(GITHUB_ASSETS_REPOSITORY);\
	  url="https://api.github.com/repos/$${repo}/contents/$${md5}";\
	  base64content=$$(base64 --wrap=0 $${file});\
	  message="{\"content\": \"$${base64content}\",\
		    \"message\": \"$${file} uploaded by $${USER}\"}";\
	  echo "Pushing asset $${file} to github $${repo} as $${md5}";\
	  http_code=$$(echo "$${message}" | curl -X PUT --data @- "$${url}" \
	   -o /dev/null -w "%{http_code}" -H "Content-Type: application/json" \
	   -H "Authorization: token $(TOKEN)");\
	  if [ $$? != 0 -o $${http_code} != 201 ]; then \
	     echo "Error: curl status=$$? http_code=$${http_code}"; \
             [ $${http_code} == 404 ] && echo "No commit access to $${repo}";\
	     [ $${http_code} == 422 ] && echo "$${file} already in $${repo}";\
	     exit $${http_code};\
	  else \
	     rm -f $${file};\
	     git add $${file}.md5 ;\
	  fi; \
	else \
	  echo "Missing argument asset='path.to.your.large.file(s)'";\
	fi; done

# The following target is for Makefile debugging
# Example: make query-ASSETS
query-%:
	@echo $($(*))

help-assets :
	@echo
	@echo "The following assets are available:"
	@echo
	@for f in $(ASSETS) ; do \
		echo "    make $${f}"; \
	done
	@echo
	@echo "You can push large file(s) with: "
	@echo
	@echo "    make push asset=path.to.your.tar.gz"
	@echo " or make push asset='path/*.png'"
	@echo
