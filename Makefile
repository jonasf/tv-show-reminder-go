APPS := web worker

test:
	go test -v ./...

build:
	for target in $(APPS); do \
		$(BUILD_ENV_FLAGS) go build -v -x -o bin/$$target ./cmd/$$target; \
	done

.PHONY: build
