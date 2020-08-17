.PHONY:	all env run build test test fmt vet install clean

GOPATH			:= $(shell pwd)
NAME			:=	jplint
VERSION			:=	v0.0.1
REVISION		:=	$(shell git rev-parse --short HEAD)
MAIN			:=	main.go
SRCS			:=	$(shell find . -type f -name '*.go')
LDFLAGS			:=	-ldflags="-s -w -X 'main.Version=$(VERSION)' -X 'main.Revision=$(REVISION)' -extldflags '-static'"

export GOBIN=$(GOPATH)/bin

.DEFAULT_GOAL	:=	all

all: clean fmt vet test build

env:
	go env

run:
	go run $(MAIN)

build:	bin/$(NAME)

bin/$(NAME):	$(SRCS)
	go build -a -tags netgo -installsuffix netgo $(LDFLAGS) -o $@

test:
	go test -v -cover

fmt:
	gofmt -w .

vet:
	go vet .

install:	build
	go install $(LDFLAGS)

clean:
	rm -rf bin
