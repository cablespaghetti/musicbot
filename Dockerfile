FROM golang:1.13 AS builder
RUN go get github.com/mitchellh/gox
COPY ./ /go
WORKDIR /go
RUN go build

FROM ubuntu:20.04
RUN apt update && apt install -y ca-certificates
COPY --from=builder /go/musicbot /
CMD ["/musicbot"]
