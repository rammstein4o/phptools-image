NS ?= docker.io/rammstein4o
VERSION ?= 0.1.2
PHP_METRICS_VERSION = 2.4.1
PHP_CODEFIXER_VERSION = 2.0.15
AST_VERSION = 1.0.0
PHAN_VERSION = 1.1.2
CHURN_VERSION = 1.0.2
PHPSTAN_VERSION = 0.10.5

IMAGE_NAME ?= phptools-image
CONTAINER_NAME ?= phptools
CONTAINER_INSTANCE ?= default

.PHONY: all build no-cache pull push tag-latest shell start stop rm release

all: build tag-latest

build:
	-docker pull $(NS)/$(IMAGE_NAME):$(VERSION)
	docker build -t $(NS)/$(IMAGE_NAME):$(VERSION) --build-arg VERSION=$(VERSION) --build-arg PHP_METRICS_VERSION=$(PHP_METRICS_VERSION) --build-arg PHP_CODEFIXER_VERSION=$(PHP_CODEFIXER_VERSION) --build-arg AST_VERSION=$(AST_VERSION) --build-arg PHAN_VERSION=$(PHAN_VERSION) --build-arg CHURN_VERSION=$(CHURN_VERSION) --build-arg PHPSTAN_VERSION=$(PHPSTAN_VERSION) .

no-cache:
	docker build --no-cache -t $(NS)/$(IMAGE_NAME):$(VERSION) --build-arg VERSION=$(VERSION) --build-arg PHP_METRICS_VERSION=$(PHP_METRICS_VERSION) --build-arg PHP_CODEFIXER_VERSION=$(PHP_CODEFIXER_VERSION) --build-arg AST_VERSION=$(AST_VERSION) --build-arg PHAN_VERSION=$(PHAN_VERSION) --build-arg CHURN_VERSION=$(CHURN_VERSION) --build-arg PHPSTAN_VERSION=$(PHPSTAN_VERSION) .

pull:
	docker pull $(NS)/$(IMAGE_NAME):$(VERSION)

push:
	docker push $(NS)/$(IMAGE_NAME):$(VERSION)

tag-latest:
	docker tag $(NS)/$(IMAGE_NAME):$(VERSION) $(NS)/$(IMAGE_NAME):latest

shell:
	-docker pull $(NS)/$(IMAGE_NAME):$(VERSION)
	docker run --rm --name $(CONTAINER_NAME)-$(CONTAINER_INSTANCE) -i -t $(PORTS) $(VOLUMES) $(ENV) $(NS)/$(IMAGE_NAME):$(VERSION) /bin/bash

start:
	-docker pull $(NS)/$(IMAGE_NAME):$(VERSION)
	docker run -d --name $(CONTAINER_NAME)-$(CONTAINER_INSTANCE) $(PORTS) $(VOLUMES) $(ENV) $(NS)/$(IMAGE_NAME):$(VERSION)

stop:
	docker stop $(CONTAINER_NAME)-$(CONTAINER_INSTANCE)

rm:
	docker rm $(CONTAINER_NAME)-$(CONTAINER_INSTANCE)

release: build
	make tag-latest -e VERSION=$(VERSION)
	make push -e VERSION=$(VERSION)
	make push -e VERSION=latest

default: build
