FROM ubuntu:20.04
COPY musicbot /
RUN apt update && apt install -y ca-certificates
CMD ["/musicbot"]
