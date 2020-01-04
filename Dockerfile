FROM ubuntu:16.04

MAINTAINER simon987 <me@simon987.net>

RUN apt update
RUN apt install -y git cmake pkg-config libglib2.0-dev\
        libssl-dev uuid-dev libavformat-dev libswscale-dev \
        python3 libmagic-dev libfreetype6-dev libcurl4-openssl-dev \
        libbz2-dev yasm libharfbuzz-dev ragel libarchive-dev\
		automake autotools-dev
