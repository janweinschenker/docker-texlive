#!/bin/bash
exec docker run --rm -i --user="$(id -u):$(id -g)" --net=none -v "$PWD":/data weinschenker/docker-texlive "$@"
