OPTION_FILES:=$(wildcard **/*.in)
DOCKERFILES:= \
	amazonlinux/Dockerfile \
	centos/Dockerfile

.PHONY: all
all: $(DOCKERFILES)

$(DOCKERFILES): Dockerfile.template $(OPTION_FILES)
	bash generate.sh $< $(shell echo $@ | cut -d '/' -f1)/options.in > $@

.PHONY: clean
clean:
	-rm $(DOCKERFILES)
