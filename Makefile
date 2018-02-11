APPS := web worker

all: vet fmt deps test build

deps:
	dep ensure

fmt:
	go fmt ./...

vet:
	go vet ./...

test:
	go test -v ./...

build:
	for target in $(APPS); do \
		$(BUILD_ENV_FLAGS) go build -o bin/$$target ./cmd/$$target; \
	done

.PHONY: build
