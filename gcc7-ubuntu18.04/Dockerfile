FROM ubuntu:18.04

LABEL description="Pre-built C++ developement environment in Ubuntu."
LABEL maintainer="https://github.com/rlan/cpp-env"

RUN apt-get update --fix-missing && apt-get -y install \
    autoconf \
    autoconf-archive \
    automake \
    build-essential \
    cmake \
    gdb \
    git \
    libboost-all-dev \
    libtool \
    valgrind \
    vim \
    wget \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
