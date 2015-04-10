Building rootfs for static wrk
===

## Build it on Linux

```bash
$ ./build.sh
```

## Build it on Vagrant

```bash
$ vagrant up
```

## Done!

If everything is ok, you'll obtain one file:

 - `rootfs.tar.gz`: the rootfs tarball to be put into the Docker image.

## About

The `extract-elf-so_static_linux-amd64` executable is copied from the project: [`William-Yeh/extract-elf-so`](https://github.com/William-Yeh/extract-elf-so).
