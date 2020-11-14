FROM ubuntu:16.04

MAINTAINER simon987 <me@simon987.net>

RUN apt  update
RUN apt install -y software-properties-common && add-apt-repository ppa:ubuntu-toolchain-r/test -y
RUN apt update && apt install -y gcc-7 g++-7 && update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-7 60 --slave /usr/bin/g++ g++ /usr/bin/g++-7

RUN apt install -y pkg-config python3 yasm ragel \
        automake autotools-dev wget libtool libssl-dev\
        curl zip unzip tar xorg-dev libglu1-mesa-dev libxcursor-dev\
        libxml2-dev libxinerama-dev libcurl4-openssl-dev gettext\
        && apt clean

RUN wget https://mirrors.edge.kernel.org/pub/software/scm/git/git-2.26.2.tar.gz && \
	tar -xzf git-*.tar.gz && cd git-* && make -j33 prefix=/usr/local all && make prefix=/usr/local install

RUN wget https://github.com/Kitware/CMake/releases/download/v3.16.2/cmake-3.16.2.tar.gz && \
    tar -xzf cmake-*.tar.gz && cd cmake-* && ./bootstrap && make -j33 && make install

RUN git clone --branch fix   --depth 1 https://github.com/simon987/vcpkg.git && cd vcpkg && ./bootstrap-vcpkg.sh
RUN ./vcpkg/vcpkg install curl[core,ssl]
RUN ./vcpkg/vcpkg install lmdb cjson glib brotli libarchive[core,bzip2,libxml2,lz4,lzma,lzo] pthread tesseract libxml2 ffmpeg libmupdf gtest mongoose libuuid libmagic libraw jasper lcms
RUN ./vcpkg/vcpkg install gumbo

