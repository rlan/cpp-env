FROM ubuntu:17.10

LABEL description="Pre-built C++ developement environment in Ubuntu."
LABEL maintainer="https://github.com/rlan/cpp-env"

RUN apt-get update --fix-missing && apt-get -y install \
    autoconf \
    autoconf-archive \
    automake \
    build-essential \
    gdb \
    git \
    libboost-all-dev \
    libtool \
    valgrind \
    vim \
    wget \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Install cmake
RUN wget https://cmake.org/files/v3.10/cmake-3.10.3-Linux-x86_64.sh \
    -O /tmp/cmake.sh \
    && mkdir /opt/cmake \
    && sh /tmp/cmake.sh --prefix=/opt/cmake --skip-license \
    && ln -s /opt/cmake/bin/cmake /usr/local/bin/cmake \
    && rm /tmp/cmake.sh
