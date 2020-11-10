build:
	go build

release:
	CGO_ENABLED=0 ~/go/bin/gox -osarch="linux/amd64 linux/arm64" -output="./bin/musicbot_{{.OS}}_{{.Arch}}"

bootstrap:
	gox -build-toolchain

setup:
	go get github.com/mitchellh/gox
	go get

clean:
	rm -f ./musicbox
	rm -f ./bin/*
