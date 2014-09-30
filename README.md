Docker-Wrk
============

## Summary

Repository name in Docker Hub: **[williamyeh/wrk](https://registry.hub.docker.com/u/williamyeh/wrk/)**

This repository contains Dockerized [wrk](https://github.com/wg/wrk), published to the public [Docker Hub](https://registry.hub.docker.com/) via **automated build** mechanism.



## Configuration

This docker image contains the following software stack:

- OS: Debian jessie (built from [debian:jessie](https://registry.hub.docker.com/_/debian/)).

- wrk


### Dependencies

- [debian:jessie](https://registry.hub.docker.com/_/debian/).


### History

- 1.1 - Add: VOLUME `/data` for Lua script file.

- 1.0 - Initial release.


## Installation

Pull all versions:

   ```
   $ docker pull williamyeh/wrk
   ```

Pull specific version:

   ```
   $ docker pull williamyeh/wrk:3.1.1
   ```



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
