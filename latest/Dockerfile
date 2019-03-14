FROM ubuntu:18.04

LABEL description="Pre-built C++ developement environment in Ubuntu." \
      maintainer="https://github.com/rlan/cpp-env"

# Build-time metadata as defined at http://label-schema.org
ARG BUILD_DATE
ARG VCS_REF
ARG VERSION
LABEL org.label-schema.build-date=$BUILD_DATE \
      org.label-schema.vcs-ref=$VCS_REF \
      org.label-schema.vcs-url="https://github.com/rlan/cpp-env" \
      org.label-schema.version=$VERSION \
      org.label-schema.schema-version="1.0"

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        gpg-agent \
        software-properties-common \
        wget

ARG CLANG_LIST=/etc/apt/sources.list.d/clang7.list

# clang 7
# https://apt.llvm.org/
RUN wget -qO - https://apt.llvm.org/llvm-snapshot.gpg.key | apt-key add - \
    # Fingerprint: 6084 F3CF 814B 57C1 CF12 EFD5 15CF 4D18 AF4F 7421
    && echo "deb http://apt.llvm.org/bionic/ llvm-toolchain-bionic-7 main" > ${CLANG_LIST} \
    && echo "deb-src http://apt.llvm.org/bionic/ llvm-toolchain-bionic-7 main" >> ${CLANG_LIST}

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        #  just clang, lld and lldb
        clang-7 lldb-7 lld-7 \
        # LLVM
        libllvm-7-ocaml-dev libllvm7 llvm-7 llvm-7-dev llvm-7-doc llvm-7-examples llvm-7-runtime \
        # Clang and co
        clang-7 clang-tools-7 clang-7-doc libclang-common-7-dev libclang-7-dev libclang1-7 clang-format-7 python-clang-7 \
        # libfuzzer
        libfuzzer-7-dev \
        # libc++
        libc++-7-dev libc++abi-7-dev \
        # OpenMP
        libomp-7-dev

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        autoconf \
        autoconf-archive \
        automake \
        ca-certificates \
        g++-8 \
        gdb \
        libboost-all-dev \
        libtool \
        valgrind \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Change default gcc
RUN update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-7 700 --slave /usr/bin/g++ g++ /usr/bin/g++-7 && \
    update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-8 800 --slave /usr/bin/g++ g++ /usr/bin/g++-8

# Install cmake
RUN wget https://cmake.org/files/v3.13/cmake-3.13.4-Linux-x86_64.sh -q -O /tmp/cmake.sh && \
    mkdir -p /opt/cmake && \
    sh /tmp/cmake.sh --prefix=/opt/cmake --skip-license && \
    ln -s /opt/cmake/bin/cmake /usr/local/bin/cmake && \
    rm /tmp/cmake.sh
