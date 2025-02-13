builddir=./build
hello=hello
goodbye=goodbye

init:
	mkdir -p $(builddir)

build-hello: init
	go build -o $(builddir)/$(hello) ./cmd/$(hello)

build-goodbye: init
	go build -o $(builddir)/$(goodbye) ./cmd/$(goodbye)

build: build-hello build-goodbye
