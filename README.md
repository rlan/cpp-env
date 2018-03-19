# cpp-env

A Dockerfile that contains a C++11-ready developement environment in Ubuntu.

## What's included

* autotools
* cmake
* Boost

## Build the docker image

```sh
docker build -t cpp-env .
```

## Launch the docker image

```sh
docker run -it cpp-env bash
```

## Ready-to-deploy image

See https://hub.docker.com/r/wqael/cpp-env/

```sh
docker pull wqael/cpp-env
```
