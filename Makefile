TAG:=kennyballou/rpmbuilder

.PHONY: build
build: Dockerfile
	docker build -t $(TAG) .
