# Dockerfile for building rootfs.tar.gz
#
# USAGE:
#   $ docker-compose up
#
# Version  1.0
#


# pull base image
FROM ubuntu:trusty

MAINTAINER William Yeh <william.pjyeh@gmail.com>


#
# Install the following .so files:
#
#  - /lib/x86_64-linux-gnu/libnss_myhostname.so.2
#
RUN DEBIAN_FRONTEND=noninteractive  \
    apt-get update  &&  \
    apt-get -f -y install libnss-myhostname


WORKDIR /tmp
COPY    .  /tmp
RUN     ./build.sh


# copy generated rootfs tarball...
VOLUME [ "/data" ]
CMD ["cp", "rootfs.tar.gz", "/data/"]
