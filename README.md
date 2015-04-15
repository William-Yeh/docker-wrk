Docker-Wrk
============

[![Build Status](https://travis-ci.org/William-Yeh/docker-wrk.svg?branch=master)](https://travis-ci.org/William-Yeh/docker-wrk)


## Summary

Repository name in Docker Hub: **[williamyeh/wrk](https://registry.hub.docker.com/u/williamyeh/wrk/)**

This repository contains Dockerized [wrk](https://github.com/wg/wrk), published to the public [Docker Hub](https://registry.hub.docker.com/) via **automated build** mechanism.



## Configuration

This docker image contains the following software stack:

- Basic glibc and libnss stuff.

- wrk

Total image size is less than 10 MB.


### Dependencies

- `scratch`.


### History

- 2.0 - Change base image from [`debian:jessie`](https://registry.hub.docker.com/_/debian/) to `scratch` (beginning from `williamyeh/wrk:4.0.1`).

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
   $ docker pull williamyeh/wrk:4.0.1
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
