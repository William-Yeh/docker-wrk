Building rootfs for static wrk
===

## Build it

You may choose to build it with either Docker or Vagrant.

- Build it with Docker:

  ```bash
  $ docker-compose up
  ```

- Build it with Vagrant:

  ```bash
  $ vagrant up
  ```

## Done!

If everything is ok, you'll obtain one file:

 - `rootfs.tar.gz`: the rootfs tarball to be put into the Docker image.

## About

The `build.sh` uses the executable `extract-elf-so` copied from the project: [`William-Yeh/extract-elf-so`](https://github.com/William-Yeh/extract-elf-so).
