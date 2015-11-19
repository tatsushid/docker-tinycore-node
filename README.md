Node.js on Tiny Core Linux
=========================

This provides a small but a fully functional [Node.js](https://nodejs.org/) runtime environment. This image is based on my [Tiny Core Linux Docker image](https://hub.docker.com/r/tatsushid/tinycore/).

## Supported tags and respective `Dockerfile` links

- [`0.12` (0.12/Dockerfile)](https://github.com/tatsushid/docker-tinycore-node/blob/master/0.12/Dockerfile)
- [`0.12-onbuild` (0.12/onbuild/Dockerfile)](https://github.com/tatsushid/docker-tinycore-node/blob/master/0.12/onbuild/Dockerfile)
- [`4.0` (4.0/Dockerfile)](https://github.com/tatsushid/docker-tinycore-node/blob/master/4.0/Dockerfile)
- [`4.0-onbuild` (4.0/onbuild/Dockerfile)](https://github.com/tatsushid/docker-tinycore-node/blob/master/4.0/onbuild/Dockerfile)
- [`4.1` (4.1/Dockerfile)](https://github.com/tatsushid/docker-tinycore-node/blob/master/4.1/Dockerfile)
- [`4.1-onbuild` (4.1/onbuild/Dockerfile)](https://github.com/tatsushid/docker-tinycore-node/blob/master/4.1/onbuild/Dockerfile)
- [`4.2` (4.2/Dockerfile)](https://github.com/tatsushid/docker-tinycore-node/blob/master/4.2/Dockerfile)
- [`4.2-onbuild` (4.2/onbuild/Dockerfile)](https://github.com/tatsushid/docker-tinycore-node/blob/master/4.2/onbuild/Dockerfile)
- [`5.0` (5.0/Dockerfile)](https://github.com/tatsushid/docker-tinycore-node/blob/master/5.0/Dockerfile)
- [`5.0-onbuild` (5.0/onbuild/Dockerfile)](https://github.com/tatsushid/docker-tinycore-node/blob/master/5.0/onbuild/Dockerfile)
- [`5.1`, `latest` (5.1/Dockerfile)][Latest Dockerfile]
- [`5.1-onbuild` (5.1/onbuild/Dockerfile)](https://github.com/tatsushid/docker-tinycore-node/blob/master/5.0/onbuild/Dockerfile)

## How to use this image

This can be used in the same way as [Official Node.js Image](https://hub.docker.com/_/node/). Please see "How to use this image" section of it with replacing the image name with this one.

## How to install C extension etc.

This doesn't contain a compiler, a linker and headers etc. so if you'd like to build a something addon for Node.js, first you need to install them by `tce-load` command. Please refer this image's [Dockerfile][Latest Dockerfile] which is a good example of installing those packages.

[Latest Dockerfile]: https://github.com/tatsushid/docker-tinycore-node/blob/master/5.1/Dockerfile
