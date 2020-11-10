FROM gcr.io/distroless/static-debian10
ARG TARGETARCH
COPY /bin/musicbot_linux_$TARGETARCH /musicbot
CMD ["/musicbot"]
