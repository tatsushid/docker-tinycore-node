IMAGE_NAME := tinycore-node
IMAGE_TAG := 4.8

.PHONY: all clean build

all: build

build:
	docker build -t $(IMAGE_NAME):$(IMAGE_TAG) .

clean:
	docker images $(IMAGE_NAME) | grep -q $(IMAGE_TAG) && docker rmi $(IMAGE_NAME):$(IMAGE_TAG) || true
