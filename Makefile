.PHONY: bash clean init public serve serve-public

DOCKER_IMAGE := blog
BLOG_BASE := $(HOME)/git/blog
BLOG_DIR := blog
BLOG_BUCKET := blog.tympanum.org
PORT := 1313

BASE_DOCKER := docker run -it --rm -v=$(BLOG_BASE):/opt/blog -w /opt/blog/$(BLOG_DIR) -p $(PORT):$(PORT) --name blog
DOCKER_SERVE := $(BASE_DOCKER) $(DOCKER_IMAGE) hugo server --port $(PORT) --bind 0.0.0.0
DOCKER := $(BASE_DOCKER) $(DOCKER_IMAGE)
DOCKER_AWS := $(BASE_DOCKER) -v=$(HOME)/.aws:/root/.aws $(DOCKER_IMAGE)

serve:
	$(DOCKER_SERVE) --buildDrafts

serve-public: clean
	$(DOCKER_SERVE)

public: clean
	$(DOCKER) hugo

push: public
	$(DOCKER_AWS) aws s3 sync --acl public-read public/ s3://$(BLOG_BUCKET)/

bash:
	$(DOCKER_AWS) /bin/bash

clean:
	rm -rf $(BLOG_DIR)/public

init:
	-git clone https://github.com/EmielH/tale-hugo.git blog/themes/tale
	docker build --rm -t $(DOCKER_IMAGE) .
