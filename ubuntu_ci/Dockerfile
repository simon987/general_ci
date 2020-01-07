FROM ubuntu:16.04

MAINTAINER simon987 <me@simon987.net>

RUN apt update
RUN apt install -y git pkg-config libglib2.0-dev\
        libssl-dev uuid-dev python3 libmagic-dev \
		libfreetype6-dev libcurl4-openssl-dev \
        libbz2-dev yasm libharfbuzz-dev ragel libarchive-dev \
		automake autotools-dev libopenjp2-7-dev wget libtool \
		libxml2-dev python3 python3-dev

RUN wget https://github.com/gohugoio/hugo/releases/download/v0.62.1/hugo_0.62.1_Linux-64bit.deb &&\
	dpkg -i hugo*.deb && rm hugo*.deb

RUN wget https://github.com/Kitware/CMake/releases/download/v3.16.2/cmake-3.16.2.tar.gz && \
	tar -xzf cmake-*.tar.gz && cd cmake-* && ./bootstrap && make -j 4 && make install
