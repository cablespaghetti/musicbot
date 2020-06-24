FROM golang:1.13 AS builder
COPY ./ /build
WORKDIR /build
RUN CGO_ENABLED=0 go build

FROM gcr.io/distroless/static-debian10
COPY --from=builder /build/musicbot /
CMD ["/musicbot"]
