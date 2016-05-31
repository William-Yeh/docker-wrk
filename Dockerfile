# Docker image for wrk: Modern HTTP benchmarking tool.
#
# URL: https://github.com/William-Yeh/docker-wrk
#
# Reference:  https://github.com/wg/wrk
#
# Version     4.0.2
#

# pull base image
FROM williamyeh/ansible:mini-alpine3
#FROM scratch
#FROM busybox
#FROM progrium/busybox
#FROM alpine:3.3
#FROM debian:jessie

MAINTAINER William Yeh <william.pjyeh@gmail.com>



# configure
VOLUME [ "/data" ]
WORKDIR /data

# Define default command.
ENTRYPOINT ["/usr/local/bin/wrk"]
