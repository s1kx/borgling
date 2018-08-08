DESTDIR ?= /usr/local

SOURCEDIRS := $(glide novendor)
SOURCES := $(shell find $(SOURCEDIRS) -name '*.go')

VERSION := $(shell git describe > /dev/null 2>&1 || echo v0.0.0)

GO_LDFLAGS = -X main.Version=$(VERSION)

ifdef GO_LDFLAGS
	GO_FLAGS += -ldflags '$(GO_LDFLAGS)'
endif

.DEFAULT_GOAL: all

all: borgling

borgling:
	go install $(GO_FLAGS)

.PHONY: test
test:
	go test ./...

build:
	go build $(GO_FLAGS) -o bin/borgling

# borgling: $(SOURCES)
# 	go build $(GO_FLAGS) -o bin/borgling
#
# .PHONY: install
# install: all
# 	install bin/borgling $(DESTDIR)/bin
