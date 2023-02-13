Docker-Wrk
============

[![Build Status](https://travis-ci.org/William-Yeh/docker-wrk.svg?branch=master)](https://travis-ci.org/William-Yeh/docker-wrk)


## Summary

Repository name in GitHub Container Registry (new): **ghcr.io/william-yeh/wrk** and in Docker Hub (old): **[williamyeh/wrk](https://hub.docker.com/r/williamyeh/wrk/)**

This repository contains Dockerized [wrk](https://github.com/wg/wrk), published to the public container registry via **automated build** mechanism.



## Configuration

This docker image contains the following software stack:

- [Distroless](https://github.com/GoogleContainerTools/distroless/blob/main/cc/README.md) debian 11

- Basic libgcc stuff.

- wrk

Total image size is less than 30 MB.


### Dependencies

- [`gcr.io/distroless/cc-debian11`](https://github.com/GoogleContainerTools/distroless/blob/main/cc/README.md).


### History

- 4.2.0 - Change base image from [`williamyeh/ansible:mini-alpine3`](https://hub.docker.com/r/williamyeh/ansible/) to [`gcr.io/distroless/cc-debian11`](https://github.com/GoogleContainerTools/distroless/blob/main/cc/README.md).

- 4.0.2 - Change base image from `scratch` to [`williamyeh/ansible:mini-alpine3`](https://hub.docker.com/r/williamyeh/ansible/) (beginning from `williamyeh/wrk:4.0.2`).

- 4.0.1 - Change base image from [`debian:jessie`](https://hub.docker.com/_/debian/) to `scratch` (beginning from `williamyeh/wrk:4.0.1`).

- 1.2 - Add: demo screencast.

- 1.1 - Add: VOLUME `/data` for Lua script file.

- 1.0 - Initial release.


## Installation

Pull all versions:

   ```
   $ docker pull williamyeh/wrk
   ```

Pull specific version:

   ```
   $ docker pull williamyeh/wrk:4.2.0
   ```


## Comparison

See the following screencast for a simple comparison between native vs. Dockerized versions of wrk: http://youtu.be/bXF6blDP0s0


## Usage


#### Show usage

```
$ docker run --rm williamyeh/wrk
```


#### Script example

```
$ docker run --rm  -v `pwd`:/data  \
      williamyeh/wrk  \
      -s script.lua  http://www.google.com/
```


#### More examples

Digital Ocean has a great introduction to this utility: [How To Benchmark HTTP Latency with wrk on Ubuntu 14.04](https://www.digitalocean.com/community/tutorials/how-to-benchmark-http-latency-with-wrk-on-ubuntu-14-04)