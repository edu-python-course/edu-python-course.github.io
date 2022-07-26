# Python training course makefile for builds automation

# general settings
SPHINX_SOURCE = docs
SPHINX_CONFIG = $(SPHINX_SOURCE)/conf.py

# internationalization settings
SPHINXINTL_LANGUAGE ?= ua
LANGUAGE            ?= en

# builds directories
SPHINX_BUILDS = _build
GETTEXT_BUILDS = $(SPHINX_BUILDS)/gettext/$(LANGUAGE)
HTML_BUILDS    = $(SPHINX_BUILDS)/html/$(LANGUAGE)
LATEX_BUILDS   = $(SPHINX_BUILDS)/latex/$(LANGUAGE)

# documentations builders
SPHINX_BUILDER  = sphinx-build -q -D language=$(LANGUAGE)
GETTEXT_BUILDER = $(SPHINX_BUILDER) -b gettext
HTML_BUILDER    = $(SPHINX_BUILDER) -b html
LATEX_BUILDER   = $(SPHINX_BUILDER) -b latex

# build documentation targets
gettext :
	@$(GETTEXT_BUILDER) "$(SPHINX_SOURCE)" "$(GETTEXT_BUILDS)"
html :
	@$(HTML_BUILDER) "$(SPHINX_SOURCE)" "$(HTML_BUILDS)"
latex :
	@$(LATEX_BUILDER) "$(SPHINX_SOURCE)" "$(LATEX_BUILDS)"
pdf : latex
	@make -C "$(LATEX_BUILDS)"

docs : clean
	@make -C . LANGUAGE=en html
	@make -C . LANGUAGE=en pdf
	@make -C . LANGUAGE=ua html
	@make -C . LANGUAGE=ua pdf

# Internationalization
locales : gettext
	@sphinx-intl --config="$(SPHINX_CONFIG)" update -p "$(GETTEXT_BUILDS)"

# Clean up builds
clean :
	@rm -rf $(SPHINX_BUILDS)/*

# export variables used by targets
.EXPORT_ALL_VARIABLES :
	export SPHINXINTL_LANGUAGE = $(SPHINXINTL_LANGUAGE)
# setup default target
.DEFAULT_GOAL := docs
