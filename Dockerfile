# Docker image for wrk: Modern HTTP benchmarking tool.
#
# URL: https://github.com/William-Yeh/docker-wrk
#
# Reference:  https://github.com/wg/wrk
#
# Version     4.2.0
#

# pull base image
FROM debian:11.6 AS build
#FROM williamyeh/ansible:mini-alpine3
#FROM scratch
#FROM busybox
#FROM progrium/busybox
#FROM alpine:3.3
#FROM debian:jessie

ENV VERSION 4.2.0
ENV TARBALL https://github.com/wg/wrk/archive/$VERSION.tar.gz

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update  && \
    echo "==> Install curl & helper tools..."  && \
    apt-get install -y --force-yes -q --no-install-recommends curl make gcc build-essential libssl-dev unzip

RUN echo "==> Download & compile..."  && \
    cd /tmp  && \
    curl -L --insecure $TARBALL -o wrk-src.tar.gz && \
    tar xvzf wrk-src.tar.gz

RUN cd /tmp/wrk-$VERSION  && \
    make       && \
    cp wrk /

#-----------------------------

FROM gcr.io/distroless/cc-debian11
COPY --from=build /wrk /

LABEL maintainer="william.pjyeh@gmail.com" name="William Yeh"

# configure
VOLUME [ "/data" ]   # for lua script, etc.
WORKDIR /data

# Define default command.
ENTRYPOINT ["/wrk"]
