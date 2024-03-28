.PHONY: build
build:
	docker buildx build . -t booniepepper/uxn:latest >build.log

.PHONY: test
test: build
	docker run booniepepper/uxn

.PHONY: release
release: build test
	docker push booniepepper/uxn:latest
