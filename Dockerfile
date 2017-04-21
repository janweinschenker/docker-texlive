FROM ubuntu:xenial
MAINTAINER Jan Weinschenker <jan.weinschenker@holisticon.de>
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -q && apt-get install -qy \
    texlive-full \
    python-pygments gnuplot \
    make git \
    pandoc pandoc-citeproc \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /data
VOLUME ["/data"]
