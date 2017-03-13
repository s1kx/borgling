DESTDIR ?= /usr/local

SOURCEDIRS := $(glide novendor)
SOURCES := $(shell find $(SOURCEDIRS) -name '*.go')

VERSION := $(shell git describe)

GO_LDFLAGS = -X version.PackageVersion=$(VERSION)

ifdef GO_LDFLAGS
	GO_FLAGS += -ldflags '$(GO_LDFLAGS)'
endif

.DEFAULT_GOAL: all

all: build

build: borgling

borgling: $(SOURCES)
	go build $(GO_FLAGS) -o bin/borgling

.PHONY: install
install: all
	install bin/borgling $(DESTDIR)/bin

.PHONY: test
test:
	go test $(shell glide novendor)
