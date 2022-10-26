# Alpine Android NDK

The public Docker Hub repository is here: [https://hub.docker.com/r/different/alpine-android-ndk/](https://hub.docker.com/r/different/alpine-android-ndk/)

Based off of [sraillard/docker-alpine-android-ndk](https://github.com/sraillard/docker-alpine-android-ndk) - just updated for recent ndk versions as needed and simplified.

## Usage

Pulling:
```shell
docker pull different/alpine-android-ndk:r25b
docker run -rm --mount source=/path/to/ndk/project/,destination=/source,type=bind --workdir=/source different/alpine-android-ndk:r25b ndk-build
```

Building:
```shell
docker build -t different/alpine-android-ndk:r25b .
docker run -rm --mount source=/path/to/ndk/project/,destination=/source,type=bind --workdir=/source different/alpine-android-ndk:r25b ndk-build
```