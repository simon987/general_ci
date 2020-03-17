FROM ubuntu:18.04

MAINTAINER simon987 <me@simon987.net>

RUN apt update
RUN apt install -y git pkg-config libglib2.0-dev\
        libssl-dev uuid-dev python3 libmagic-dev \
		libfreetype6-dev libcurl4-gnutls-dev \
        libbz2-dev yasm libharfbuzz-dev ragel libarchive-dev \
		automake autotools-dev libopenjp2-7-dev wget libtool \
		libxml2-dev python3 python3-dev libtiff-dev \
		libpango1.0-dev libasan4 && apt clean

RUN wget https://github.com/Kitware/CMake/releases/download/v3.16.2/cmake-3.16.2.tar.gz && \
	tar -xzf cmake-*.tar.gz && cd cmake-* && ./bootstrap && make -j 4 && make install
RUN git clone "https://github.com/danbloomberg/leptonica" && mkdir leptonica/build && cd leptonica/build && cmake -DCMAKE_C_FLAGS="-fPIC" .. && make -j 4 && make install && rm -rf /cmake-* /leptonica

RUN git clone "https://github.com/glennrp/libpng" && cd libpng && CFLAGS="-fPIC" ./configure --enable-static && make -j 4 && make install
