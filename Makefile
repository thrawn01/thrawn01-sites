.PHONY: all build-site build-image publish-image
.DEFAULT_GOAL := all

DOCKER_REPO=thrawn01

build:
	docker build -t ${DOCKER_REPO}/thrawn01-sites:latest .

run: build
	@echo "Running Image on port 1313"
	-docker rm thrawn01-sites
	docker run -p 80:80 --name thrawn01-sites thrawn01/thrawn01-sites:latest

publish: build
	docker push ${DOCKER_REPO}/thrawn01-sites:latest

all: build
