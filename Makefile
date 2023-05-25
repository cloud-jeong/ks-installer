# REPO?=kubespheredev/ks-installer
# TAG:=$(shell git rev-parse --abbrev-ref HEAD | sed -e 's/\//-/g')-dev

REPO?=jjssig77/ks-installer
TAG:=v3.2.1-smap-20230525

build:
	docker build . --file Dockerfile.complete --tag $(REPO):$(TAG)
push:
	docker push $(REPO):$(TAG)
all: build push