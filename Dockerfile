FROM ubuntu:17.10
MAINTAINER Jan Weinschenker <jan.weinschenker@holisticon.de>
ENV DEBIAN_FRONTEND noninteractive
ADD VERSION .

RUN apt-get update -q && apt-get install -qy \
    texlive-full \
    python-pygments gnuplot \
    make git \
    pandoc pandoc-citeproc \
    biber \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /data
VOLUME ["/data"]
