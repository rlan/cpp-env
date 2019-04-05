Pre-built C++ developement environment on [Docker Hub](https://hub.docker.com/r/wqael/cpp-env/).

![](https://img.shields.io/docker/cloud/automated/wqael/cpp-env.svg)
![](https://img.shields.io/docker/cloud/build/wqael/cpp-env.svg)
![](https://img.shields.io/docker/pulls/wqael/cpp-env.svg)
![](https://img.shields.io/docker/stars/wqael/cpp-env.svg)


| Tag  | Comment | Dockerfile | Info |
| ---- | ------- | ---------- | ---- |
| `latest` | [gcc 8](https://gcc.gnu.org/releases.html). [clang 7](https://apt.llvm.org/). [cmake 3.14.1](https://cmake.org/download/). | [Dockerfile](latest/Dockerfile) | [![](https://images.microbadger.com/badges/image/wqael/cpp-env:latest.svg) ![](https://images.microbadger.com/badges/commit/wqael/cpp-env:latest.svg)](https://microbadger.com/images/wqael/cpp-env:latest) |
| `gcc7-ubuntu18.04` | | [Dockerfile](gcc7-ubuntu18.04/Dockerfile) | [![](https://images.microbadger.com/badges/image/wqael/cpp-env:gcc7-ubuntu18.04.svg) ![](https://images.microbadger.com/badges/commit/wqael/cpp-env:gcc7-ubuntu18.04.svg)](https://microbadger.com/images/wqael/cpp-env:gcc7-ubuntu18.04) |
| `gcc5.4-ubuntu16.04` | | [Dockerfile](gcc5.4-ubuntu16.04/Dockerfile) | [![](https://images.microbadger.com/badges/image/wqael/cpp-env:gcc5.4-ubuntu16.04.svg) ![](https://images.microbadger.com/badges/commit/wqael/cpp-env:gcc5.4-ubuntu16.04.svg)](https://microbadger.com/images/wqael/cpp-env:gcc5.4-ubuntu16.04) |


## What's included

* [autotools](https://www.gnu.org/software/automake/faq/autotools-faq.html)
* [Boost](https://www.boost.org/)
* [cmake](https://cmake.org/)
* [gdb](https://www.gnu.org/software/gdb/)
* [valgrind](http://valgrind.org/)
* See respective Dockerfile for more details.
