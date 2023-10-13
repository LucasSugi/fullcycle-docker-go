build-go:
	docker build -t desafio-go:latest -f Dockerfile .

run-go:
	docker run --rm --name desafio-go desafio-go:latest

image-size-go:
	docker images | grep desafio-go
