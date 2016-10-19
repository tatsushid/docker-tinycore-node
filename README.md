Node.js on Tiny Core Linux
=========================

This provides a small but a fully functional [Node.js](https://nodejs.org/) runtime environment. This image is based on my [Tiny Core Linux Docker image](https://hub.docker.com/r/tatsushid/tinycore/).

## Supported tags and respective `Dockerfile` links

- [`0.12` (0.12/Dockerfile)](https://github.com/tatsushid/docker-tinycore-node/blob/master/0.12/Dockerfile)
- [`0.12-onbuild` (0.12/onbuild/Dockerfile)](https://github.com/tatsushid/docker-tinycore-node/blob/master/0.12/onbuild/Dockerfile)
- [`4.6` (4.6/Dockerfile)](https://github.com/tatsushid/docker-tinycore-node/blob/master/4.6/Dockerfile)
- [`4.6-onbuild` (4.6/onbuild/Dockerfile)](https://github.com/tatsushid/docker-tinycore-node/blob/master/4.6/onbuild/Dockerfile)
- [`6.9`, `latest` (6.9/Dockerfile)][Latest Dockerfile]
- [`6.9-onbuild` (6.9/onbuild/Dockerfile)](https://github.com/tatsushid/docker-tinycore-node/blob/master/6.9/onbuild/Dockerfile)

## How to use this image

This can be used in the same way as [Official Node.js Image](https://hub.docker.com/_/node/). Please see "How to use this image" section of it with replacing the image name with this one.

## How to install C extension etc.

This doesn't contain a compiler, a linker and headers etc. so if you'd like to build a something addon for Node.js, first you need to install them by `tce-load` command. Please refer this image's [Dockerfile][Latest Dockerfile] which is a good example of installing those packages.

[Latest Dockerfile]: https://github.com/tatsushid/docker-tinycore-node/blob/master/6.9/Dockerfile
