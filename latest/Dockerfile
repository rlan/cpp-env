FROM ubuntu:18.04

LABEL description="Pre-built C++ developement environment in Ubuntu."
LABEL maintainer="https://github.com/rlan/cpp-env"

# Build-time metadata as defined at http://label-schema.org
ARG BUILD_DATE
ARG VCS_REF
ARG VERSION
LABEL org.label-schema.build-date=$BUILD_DATE \
      org.label-schema.vcs-ref=$VCS_REF \
      org.label-schema.vcs-url="https://github.com/rlan/cpp-env" \
      org.label-schema.version=$VERSION \
      org.label-schema.schema-version="1.0"

RUN apt-get update --fix-missing && apt-get -y install \
    autoconf \
    autoconf-archive \
    automake \
    build-essential \
    g++-8 \
    gcc-8 \
    gdb \
    libboost-all-dev \
    libtool \
    valgrind \
    wget \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Change default gcc
RUN update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-7 700 --slave /usr/bin/g++ g++ /usr/bin/g++-7 \
    && update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-8 800 --slave /usr/bin/g++ g++ /usr/bin/g++-8

# Install cmake
RUN wget –q -nv https://cmake.org/files/v3.12/cmake-3.12.0-Linux-x86_64.sh \
    -O /tmp/cmake.sh \
    && mkdir /opt/cmake \
    && sh /tmp/cmake.sh --prefix=/opt/cmake --skip-license \
    && ln -s /opt/cmake/bin/cmake /usr/local/bin/cmake \
    && rm /tmp/cmake.sh
