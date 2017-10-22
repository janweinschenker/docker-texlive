#!/bin/bash

# SET THE FOLLOWING VARIABLES
# docker hub username
USERNAME=weinschenker
# image name
IMAGE=docker-texlive
version=`cat VERSION`
echo "version: $version"

git commit -m "version $version"
git tag -a "$version" -m "version $version"
git push
git push --tags
docker tag $USERNAME/$IMAGE:latest $USERNAME/$IMAGE:$version
# push it
docker push $USERNAME/$IMAGE:latest
docker push $USERNAME/$IMAGE:$version

