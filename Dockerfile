FROM golang:1.13 AS builder
COPY ./ /build
WORKDIR /build
RUN go build .

FROM gcr.io/distroless/static-debian10
COPY --from=builder /build/musicbot /
ENTRYPOINT ["musicbot"]
