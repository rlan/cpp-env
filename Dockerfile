FROM ubuntu:17.10

LABEL description="Pre-built C++ developement environment in Ubuntu."
LABEL maintainer="https://github.com/rlan/cpp-env"

RUN apt-get update --fix-missing && apt-get -y install \
    vim git \
    build-essential \
    gdb valgrind \
    automake autoconf autoconf-archive libtool \
    libboost-all-dev \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Install cmake
ADD https://cmake.org/files/v3.10/cmake-3.10.3-Linux-x86_64.sh /root/cmake.sh
RUN mkdir /opt/cmake \
    && sh /root/cmake.sh --prefix=/opt/cmake --skip-license \
    && ln -s /opt/cmake/bin/cmake /usr/local/bin/cmake \
    && rm /root/cmake.sh \
    && cmake --version
