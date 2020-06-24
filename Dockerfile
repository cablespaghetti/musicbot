FROM golang:1.13 AS builder
COPY ./ /build
WORKDIR /build
RUN go build .

FROM ubuntu:20.04
RUN apt update && apt install -y ca-certificates
COPY --from=builder /build/musicbot /
CMD ["/musicbot"]
