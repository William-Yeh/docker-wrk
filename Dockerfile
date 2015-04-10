# Docker image for wrk: Modern HTTP benchmarking tool.
#
# URL: https://github.com/William-Yeh/docker-wrk
#
# Reference:  https://github.com/wg/wrk
#
# Version     2.0
#

# pull base image
FROM scratch
#FROM busybox
#FROM progrium/busybox
#FROM alpine:3.1
#FROM debian:jessie

MAINTAINER William Yeh <william.pjyeh@gmail.com>


ADD  rootfs.tar.gz  /


# configure
VOLUME [ "/data" ]
WORKDIR /data

# Define default command.
ENTRYPOINT ["/usr/local/bin/wrk"]
