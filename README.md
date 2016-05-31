Docker-Wrk
============

[![Build Status](https://travis-ci.org/William-Yeh/docker-wrk.svg?branch=master)](https://travis-ci.org/William-Yeh/docker-wrk)


## Summary

Repository name in Docker Hub: **[williamyeh/wrk](https://hub.docker.com/r/williamyeh/wrk/)**

This repository contains Dockerized [wrk](https://github.com/wg/wrk), published to the public [Docker Hub](https://registry.hub.docker.com/) via **automated build** mechanism.



## Configuration

This docker image contains the following software stack:

- Alpine 3

- Basic libgcc stuff.

- wrk

Total image size is less than 10 MB.


### Dependencies

- [`williamyeh/ansible:mini-alpine3`](https://hub.docker.com/r/williamyeh/ansible/).


### History

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
   $ docker pull williamyeh/wrk:4.0.2
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